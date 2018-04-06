<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提现管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var url;
	
	$(function(){
		$("#dg2").datagrid({
			onDblClickRow:function(rowIndex,rowData){
				chooseRole();
			}
		});
	})
	
	//搜索游戏
	function searchGameRoom(){
		$('#dg').datagrid('load',{
			phoneNumber:$("#phoneNumber").val(),
			userName:$("#userName").val(),
			status:$("#status").val(),
		});
	}
	//添加用户页面
	function openGameRoomAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","查看体现信息");
		url="saveGameRoom.do";
	}
	//修改用户页面
	function openGameRoomModifyDialog(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		var row=selectedRows[0];
		$("#dlg").dialog("open").dialog("setTitle","修改游戏价格信息");
		$("#fm").form("load",row);
		$("#userName").attr("readonly","readonly");
		url="saveGameRoom.do?gameRoomId="+row.id;
	}
	//保存用户
	function saveGameRoom(){
		$("#fm").form("submit",{
			url:url,
			onSubmit:function(){
				return $(this).form("validate");
			},
			success:function(result){
				var result=eval('('+result+')');
				if(result.errorMsg){
					$.messager.alert('系统提示',"<font color=red>"+result.errorMsg+"</font>");
					return;
				}else{
					$.messager.alert('系统提示','保存成功');
					closeGameRoomAddDialog();
					$("#dg").datagrid("reload");
				}
			}
		});
	}
	
	function closeGameRoomAddDialog(){
		$("#dlg").dialog("close");
		$("#fm").form('clear');
	}
	
	
	function openRoleChooseDialog(){
		$("#dlg2").dialog("open").dialog("setTitle","选择角色");
	}
	
	function searchRole(){
		$('#dg2').datagrid('load',{
			s_roleName:$("#s_roleName").val()
		});
	}
	
	function closeRoleDialog(){
		$("#s_roleName").val("");
		$('#dg2').datagrid('load',{
			s_roleName:""
		});
		$("#dlg2").dialog("close");
	}
	
	function chooseRole(){
		var selectedRows=$("#dg2").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一个角色！');
			return;
		}
		var row=selectedRows[0];
		$("#roleId").val(row.id);
		$("#roleName").val(row.name);
		closeRoleDialog();
	}
	
	function updateDate(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length==0){
			$.messager.alert('系统提示','请选择要审核的数据！');
			return;
		}
		var strIds=[];
		for(var i=0;i<selectedRows.length;i++){
			strIds.push(selectedRows[i].cashId);
		}
		var ids=strIds.join(",");
		$.messager.confirm("系统提示","您确认要标记这条数据吗？",function(r){
			if(r){
				$.post("saveUserCash.do",{id:ids,status:1},function(result){
					if(result.success){
						$.messager.alert('系统提示',"您已成功标记这条数据！");
						$("#dg").datagrid("reload");
					}else{
						$.messager.alert('系统提示',result.errorMsg);
					}
				},"json");
			}
		});
	}
	
	function refuse(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length==0){
			$.messager.alert('系统提示','请选择要驳回的数据！');
			return;
		}
		var strIds=[];
		for(var i=0;i<selectedRows.length;i++){
			strIds.push(selectedRows[i].cashId);
		}
		var ids=strIds.join(",");
		$.messager.confirm("系统提示","您确认要驳回记这条数据吗？",function(r){
			if(r){
				$.post("saveUserCash.do",{id:ids,status:2},function(result){
					if(result.success){
						$.messager.alert('系统提示',"您已成功驳回条数据！");
						$("#dg").datagrid("reload");
					}else{
						$.messager.alert('系统提示',result.errorMsg);
					}
				},"json");
			}
		});
	}
	function formatPrice(val,row){
		if (val ==0){
			return '申请中';
		} else if(val==1){
			return "已处理";
		}else if(val==2){
			return "已驳回";
		}
	}
	
	//导出题库  
	function toDownLoadExcel(){  
		  var status=$("#status").val();
	      location.href ='${pageContext.request.contextPath}/admin/exportUserCash.do?status='+status;  
	}   
</script>
</head>
<body style="margin: 1px;">
<table id="dg" title="提现管理" class="easyui-datagrid" fitColumns="true" 
    pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/userCashList.do" fit="true" toolbar="#tb">
    <thead>
    	<tr>
    		<th field="cb" checkbox="true" align="center"></th>
    		<th field="userName" width="50" align="center">用户名称</th>
    		<th field="phone" width="50" align="center">手机号码</th>
    		<th field="money" width="100" align="center">金额</th>
    		<th field="realmoney" width="100" align="center">已收手续费</th>
    		<th field="bankName" width="100" align="center">银行名称</th>
    		<th field="bankNum" width="100" align="center">银行账号</th>
    		<th field="bankBranch" width="100" align="center">银行支行</th>
    		<th field="bankRealname" width="100" align="center">本人姓名</th>
    		<th field="weixinAccount" width="100" align="center">微信账号</th>
    		<th field="zfbAccount" width="100" align="center">支付宝账号账号</th>
    		<th field="cashType" width="100" align="center">提现方式</th>
    		<th field="addtime" width="150" align="center" >创建时间</th>
    		<th field="status" width="100" align="center" formatter="formatPrice">状态</th>
    	</tr>
    </thead>
</table>
<div id="tb">
	<div>
		<a href="javascript:updateDate()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">标记已打款</a>
		<a href="javascript:refuse()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">驳回</a>
	</div>
	<div>
		&nbsp;用户名称：&nbsp;<input type="text" name="userName" id="userName" size="20" onkeydown="if(event.keyCode==13) searchGameRoom()"/>
		&nbsp;用户手机：&nbsp;<input type="text" name="phoneNumber" id="phoneNumber" size="20" onkeydown="if(event.keyCode==13) searchGameRoom()"/>
		&nbsp;状态：&nbsp;<select  name="status" id="status" >
		<option value="">全部</option>
		<option value="0">申请中</option>
		<option value="1">成功</option>
		<option value="2">驳回</option>
		</select>
		<a href="javascript:searchGameRoom()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
		
			<a href="javascript:void(0);" onclick="toDownLoadExcel();" class="easyui-linkbutton" style="float:right">导出EXCEL</a>  
	</div>
</div>


</body>
</html>