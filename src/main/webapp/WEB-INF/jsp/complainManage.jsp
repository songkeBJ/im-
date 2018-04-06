<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>投诉管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var url;
	function closeUserAddDialog(){
		$("#dlg").dialog("close");
		$("#fm").form('clear');
	}
	
	
	$(function(){
		$("#dg2").datagrid({
			onDblClickRow:function(rowIndex,rowData){
				chooseRole();
			}
		});
	})
	
	//搜索用户
	function searchUser(){
		$('#dg').datagrid('load',{
			userId:$("#userId").val(),
			toUserId:$("#toUserId").val(),
			status:$("#status").val(),
		});
	}
	//格式化性别
	function initStatus(val,row){
		if(val=="0"){
			return "冻结(未处理)";
		}
		if(val=="1"){
			return "冻结(已处理)";
		}
		if(val=="2"){
			return "已解除冻结";
		}
	}
	function updateDate(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length==0){
			$.messager.alert('系统提示','请选择要处理的数据！');
			return;
		}
		var strIds=[];
		for(var i=0;i<selectedRows.length;i++){
			strIds.push(selectedRows[i].id);
		}
		var ids=strIds.join(",");
		$.messager.confirm("系统提示","您确认要处理这条数据吗，将解冻该用户的金额！",function(r){
			if(r){
				$.post("saveComplain.do",{id:ids,status:1},function(result){
					if(result.success){
						$.messager.alert('系统提示',"您已成功处理这条数据！");
						$("#dg").datagrid("reload");
					}else{
						$.messager.alert('系统提示',result.errorMsg);
					}
				},"json");
			}
		});
	}
	
	//修改用户页面
	function editPass(){
		var node=$("#dg").datagrid('getSelections');
		if(node.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		$("#fm").form("clear");
		$("#T_image").html("");
		var row=node[0];
		$("#dlg").dialog("open").dialog("setTitle","查看详细");
		$("#fm").form("load",node);
		$("#T_nickName").html(row.userName);
		$("#T_beNickName").html(row.toUserName);
		
		var strs=row.images.split(",");
		for (var i = 0; i < strs.length; i++) {
			$("#T_image").append("<a href='"+strs[i]+"' target='_blank'><img src='"+strs[i]+"' width='150px'></a>");
		}
		$("#T_reason").html(row.remark);
		$("#T_otherReason").html(row.otherReason);
	}
	
</script>
</head>
<body style="margin: 1px;">
<table id="dg" title="投诉管理" class="easyui-datagrid" fitColumns="true" 
    pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/agentUser/complainManageList.do" fit="true" toolbar="#tb">
    <thead>
    	<tr>
    		<th field="cb" checkbox="true" align="center"></th>
    		<th field="userId" width="50" align="center">操作人Id</th>
    		<th field="userName" width="50" align="center">操作人名称</th>
    		<th field="toUserId" width="50" align="center">用户Id</th>
    		<th field="toUserName" width="50" align="center">用户名称</th>
    		<th field="remark" width="50" align="center" >原因</th>
    		<th field="status" width="50" align="center" formatter="initStatus">状态</th>
    	</tr>
    </thead>
</table>
<div id="tb">
	<div>
		<a href="javascript:updateDate()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">标注已处理</a>
		<a href="javascript:editPass()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">详情</a>
	</div>
	<div>
		&nbsp;操作人Id：&nbsp;<input type="text" name="userId" id="userId" size="20" onkeydown="if(event.keyCode==13) searchGame()"/>
		&nbsp;用户ID：&nbsp;<input type="text" name="toUserId" id="toUserId" size="20" onkeydown="if(event.keyCode==13) searchGame()"/>
			&nbsp;状态：&nbsp;<select  name="status" id="status" >
		<option value="">全部</option>
		<option value="0">已冻结</option>
		<option value="1">冻结已解除</option>
		</select>
		<a href="javascript:searchUser()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
	</div>
</div>

<div id="dlg" class="easyui-dialog" style="width: 670px;height: 450px;padding: 10px 20px"
  closed="true" buttons="#dlg-buttons">
  <form id="fm" method="post">
  	<table cellspacing="5px;">
  		<tr>
  			<td>申请用户：</td>
  			<td><label type="text" id="T_nickName" name="T_nickName" ></label></td>
  		</tr>
  		<tr>
  			<td>被投诉用户：</td>
  			<td><label type="text" id="T_beNickName" name="T_beNickName"  ></label></td>
  		</tr>
  		<tr>
  			<td>原因：</td>
  			<td><label type="text" id="T_reason" name="T_reason" ></label></td>
  		</tr>
  		<tr>
  			<td>凭证：</td>
  			<td><div  id="T_image"></div></td>
  		</tr>
  		
  	</table>
  </form>
</div>

<div id="dlg-buttons">
	<a href="javascript:closeUserAddDialog()" class="easyui-linkbutton" iconCls="icon-cancel" >关闭</a>
</div>
</body>
</html>