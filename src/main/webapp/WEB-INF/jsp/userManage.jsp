<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
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
			s_roleId:$("#s_roleId").combobox("getValue")
		});
	}
	//添加用户页面
	function openUserAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","添加用户信息");
		$("#userName").removeAttr("readonly");
		url="saveUser.do";
	}
	//修改用户页面
	function openUserModifyDialog(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		var row=selectedRows[0];
		$("#dlg").dialog("open").dialog("setTitle","修改用户信息");
		$("#fm").form("load",row);
		$("#userName").attr("readonly","readonly");
		url="saveUser.do?userId="+row.id;
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
	
	function closeUserAddDialog(){
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
</script>
</head>
<body style="margin: 1px;">
<table id="dg" title="用户管理" class="easyui-datagrid" fitColumns="true" 
    pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/userList.do" fit="true" toolbar="#tb">
    <thead>
    	<tr>
    		<th field="cb" checkbox="true" align="center"></th>
    		<th field="name" width="50" align="center">用户名</th>
    		<th field="phoneNumber" width="100" align="center">手机号</th>
    		<th field="userEmail" width="100" align="center">邮箱</th>
    		<th field="balance" width="150" align="center" hidden="true">余额</th>
    		<th field="roleName" width="150" align="center">用户角色</th>
    		<th field="userDescription" width="300" align="center">备注</th>
    	</tr>
    </thead>
</table>
<div id="tb">
	<div>
		<a href="javascript:openUserAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
		<a href="javascript:openUserModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
		<a href="javascript:deleteUser()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
	</div>
	<div>
		&nbsp;用户名：&nbsp;<input type="text" name="s_userName" id="s_userName" size="20" onkeydown="if(event.keyCode==13) searchUser()"/>
		&nbsp;用户角色：&nbsp;<input class="easyui-combobox" id="s_roleId" name="s_roleId" size="20" data-options="editable:false,panelHeight:'auto',valueField:'id',textField:'name',url:'${pageContext.request.contextPath}/admin/comBoListt.do'"/>
		<a href="javascript:searchUser()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
	</div>
</div>

<div id="dlg" class="easyui-dialog" style="width: 670px;height: 350px;padding: 10px 20px"
  closed="true" buttons="#dlg-buttons">
  <form id="fm" method="post">
  	<table cellspacing="5px;">
  		<tr>
  			<td>账号：</td>
  			<td><input type="text" id="name" name="name" class="easyui-validatebox" required="true"/></td>
  			<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  			<td>密码：</td>
  			<td><input type="text" id="password" name="password" class="easyui-validatebox"  /></td>
  		</tr>
  		<tr>
  			<td>邮箱：</td>
  			<td><input type="text" id="userEmail" name="userEmail" class="easyui-validatebox" required="true"/><input  id="userType" name="userType" value="1"  type="hidden"/></td>
  			<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  			<td>手机号码：</td>
  			<td><input type="text" id="phoneNumber" name="phoneNumber" class="easyui-validatebox" required="true"/></td>
  		</tr>
  		<tr>
  			<td>角色名称：</td>
  			<td><input type="hidden" id="roleId" name="roleId" /><input type="text" id="roleName" name="roleName" readonly="readonly" class="easyui-validatebox" required="true"/></td>
  			<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  			<td colspan="2"><a href="javascript:openRoleChooseDialog()" class="easyui-linkbutton" >选择角色</a></td>
  		<input  id="userType" name="userType" value="1"  type="hidden"/>
  		</tr>
  		<tr>
  			<td valign="top">备注：</td>
  			<td colspan="4">
  				<textarea rows="7" cols="50" name="userDescription" id="userDescription"></textarea>
  			</td>
  		</tr>
  	</table>
  </form>
</div>

<div id="dlg-buttons">
	<a href="javascript:saveUser()" class="easyui-linkbutton" iconCls="icon-ok" >保存</a>
	<a href="javascript:closeUserAddDialog()" class="easyui-linkbutton" iconCls="icon-cancel" >关闭</a>
</div>


<div id="dlg2" class="easyui-dialog" iconCls="icon-search" style="width: 500px;height: 480px;padding: 10px 20px"
  closed="true" buttons="#dlg2-buttons">
  <div style="height: 40px;" align="center">
  	角色名称：<input type="text" id="s_roleName" name="s_roleName" onkeydown="if(event.keyCode==13) searchRole()"/>
  	<a href="javascript:searchRole()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
  </div>
  <div style="height: 350px;">
  	<table id="dg2" title="查询结果" class="easyui-datagrid" fitColumns="true" 
    pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/roleList.do" singleSelect="true" fit="true" >
    <thead>
    	<tr>
    		<th field="id" width="50" align="center">编号</th>
    		<th field="name" width="100" align="center">角色名称</th>
    		<th field="roleDescription" width="200" align="center">备注</th>
    	</tr>
    </thead>
</table>
  </div>
</div>

<div id="dlg2-buttons">
	<a href="javascript:chooseRole()" class="easyui-linkbutton" iconCls="icon-ok" >确定</a>
	<a href="javascript:closeRoleDialog()" class="easyui-linkbutton" iconCls="icon-cancel" >关闭</a>
</div>
</body>
</html>