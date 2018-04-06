<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员信息列表</title>
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
	
	//搜索用户
	function searchUser(){
		$('#dg').datagrid('load',{
			s_userName:$("#s_userName").val(),
			s_phoneNumber:$("#s_phoneNumber").val(),
			s_userId:$("#s_userId").val(),
		});
	}
	//添加用户页面
	function openUserAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","添加用户信息");
		$("#userName").removeAttr("readonly");
		url="saveUser.do";
	}
	//修改用户页面
	function editPass(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		var row=selectedRows[0];
		$("#dlg").dialog("open").dialog("setTitle","修改密码");
		$("#fm").form("load",row);
		url="updatePw.do?id="+row.userId;
	}
	//保存用户
	function saveUser(){
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
					closeUserAddDialog();
					$("#dg").datagrid("reload");
				}
			}
		});
	}
	
	
	//锁定用户
	function lock(status){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		var row=selectedRows[0];
		var msg="";
		if(status=="1"){
			msg ="您确认要锁定该用户吗";
		}else{
			msg ="您确认要解除锁定";
		}
			
		$.messager.confirm("系统提示",msg,function(r){
			if(r){
				$.post("updateStatus.do",{id:row.userId,status:status},function(result){
					if(result.success){
						$.messager.alert('系统提示',"操作成功");
						$("#dg").datagrid("reload");
					}else{
						$.messager.alert('系统提示',result.errorMsg);
					}
				},"json");
			}
		});
	}
	
	function closeUserAddDialog(){
		$("#dlg").dialog("close");
		$("#fm").form('clear');
	}
	
	function closeUserAddDialog2(){
		$("#dlg2").dialog("close");
		$("#fm2").form('clear');
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
	
	function deleteUser(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length==0){
			$.messager.alert('系统提示','请选择要删除的数据！');
			return;
		}
		var strIds=[];
		for(var i=0;i<selectedRows.length;i++){
			strIds.push(selectedRows[i].id);
		}
		var ids=strIds.join(",");
		$.messager.confirm("系统提示","您确认要删除这<font color=red>"+selectedRows.length+"</font>条数据吗？",function(r){
			if(r){
				$.post("deleteUser.do",{delIds:ids},function(result){
					if(result.success){
						$.messager.alert('系统提示',"您已成功删除<font color=red>"+result.delNums+"</font>条数据！");
						$("#dg").datagrid("reload");
					}else{
						$.messager.alert('系统提示',result.errorMsg);
					}
				},"json");
			}
		});
	}
	//格式化金额
	function initBalance(val,row){
		return "<font color=red>"+val+"</font> (元)";
	}
	//格式化性别
	function initSex(val,row){
		if(val=="0"){
			return "男";
		}
		if(val=="1"){
			return "女";
		}
	}
	//格式化性别
	function initStatus(val,row){
		if(val=="1"){
			return "锁定";
		}else{
			return "正常";
		}
	}
	
	//修改用户页面
	function editMoney(status){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		var row=selectedRows[0];
		
		var msg="";
		if(status==0){
			msg="充值"
		}else{
			msg="扣除"
		}
		
		$("#dlg2").dialog("open").dialog("setTitle",msg);
		$("#fm2").form('clear');
		url="updateRechargeRe.do?id="+row.userId+"&status="+status;
	}
	//保存用户
	function saveUser2(){
		$("#fm2").form("submit",{
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
					closeUserAddDialog2();
					$("#dg").datagrid("reload");
				}
			}
		});
	}
</script>
</head>
<body style="margin: 1px;">
<table id="dg" title="会员信息列表" class="easyui-datagrid" fitColumns="true" 
    pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/appuserList.do" fit="true" toolbar="#tb">
    <thead>
    	<tr>
    		<th field="cb" checkbox="true" align="center"></th>
    		<th field="userId" width="50" align="center">用户id</th>
    		<th field="username" width="50" align="center">用户名</th>
    		<th field="phoneNumber" width="50" align="center">手机号</th>
    		<th field="sex" width="50" align="center"  formatter="initSex">性别</th>
    		<th field="age" width="50" align="center">年龄</th>
    		<th field="districtId" width="50" align="center">地区</th>
    		<th field="thermalSignatrue" width="50" align="center">个性签名</th>
    		<th field="balance" width="50" align="center" formatter="initBalance">余额</th>
    		<th field="lockStatus" width="50" align="center" formatter="initStatus">状态</th>
    		<th field="createdTime" width="50" align="center">注册时间</th>
    	</tr>
    </thead>
</table>
<div id="tb">
	<div>
		<a href="javascript:lock(1)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">锁定</a>
		<a href="javascript:lock(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">取消锁定</a>
		<a href="javascript:editPass()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">密码重置</a>
		<a href="javascript:editMoney(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true">充值</a>
		<a href="javascript:editMoney(1)" class="easyui-linkbutton" iconCls="icon-remove" plain="true">扣除</a>
	</div>
	<div>
		&nbsp;手机号码：&nbsp;<input type="text" name="s_phoneNumber" id="s_phoneNumber" size="20" onkeydown="if(event.keyCode==13) searchUser()"/>
			&nbsp;用户id：&nbsp;<input type="text" name="s_userId" id="s_userId" size="20" onkeydown="if(event.keyCode==13) searchUser()"/>
		<a href="javascript:searchUser()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
	</div>
</div>

<div id="dlg" class="easyui-dialog" style="width: 370px;height: 150px;padding: 10px 20px"
  closed="true" buttons="#dlg-buttons">
  <form id="fm" method="post">
  	<table cellspacing="5px;">
  		<tr>
  			<td>新密码：</td>
  			<td><input type="text" id="password" name="password" class="easyui-validatebox" data-options="required:true"  /></td>
  		</tr>
  	</table>
  </form>
</div>

<div id="dlg-buttons">
	<a href="javascript:saveUser()" class="easyui-linkbutton" iconCls="icon-ok" >保存</a>
	<a href="javascript:closeUserAddDialog()" class="easyui-linkbutton" iconCls="icon-cancel" >关闭</a>
</div>

<div id="dlg2" class="easyui-dialog" style="width: 370px;height: 150px;padding: 10px 20px"
  closed="true" buttons="#dlg2-buttons">
  <form id="fm2" method="post">
  	<table cellspacing="5px;">
  		<tr>
  			<td>金额：</td>
  			<td><input type="text" id="amount" name="amount" class="easyui-validatebox"  /></td>
  		</tr>
  	</table>
  </form>
</div>

<div id="dlg2-buttons">
	<a href="javascript:saveUser2()" class="easyui-linkbutton" iconCls="icon-ok" >确定</a>
	<a href="javascript:closeUserAddDialog2()" class="easyui-linkbutton" iconCls="icon-cancel" >关闭</a>
</div>

</body>
</html>