<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>IM后台管理</title>
<link href="${pageContext.request.contextPath}/favicon.ico" rel="icon" type="image/x-icon" />
<%
	if(session.getAttribute("currentUser")==null){
		response.sendRedirect("login.do");
		return;
	}
%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		$("#tree").tree({
			lines:true,
			url:'${pageContext.request.contextPath}/agentMenu/menuList.do?parentId=-1',
			onLoadSuccess:function(){
				$("#tree").tree('expandAll');
			},
			onClick:function(node){
				if(node.id==4){
					logout();
				}else if(node.id==3){
					openPasswordModifyDialog();
				}else if(node.attributes.authPath){
					openTab(node);
				}
			}
		});
		
		function logout(){
			$.messager.confirm('系统提示','您确定要退出系统吗？',function(r){
				if(r){
					window.location.href='logout.do';
				}
			});
		}
		
		function openPasswordModifyDialog(){
			url="updatePassword.do";
			$("#dlg").dialog("open").dialog("setTitle","修改密码");
		}
		
		function openTab(node){
			if($("#tabs").tabs("exists",node.text)){
				var tab = $("#tabs").tabs("select",node.text);
			    // 重新加载已经存在的Tab内容  
                var currTab = $('#tabs').tabs('getTab', node.text);  
                $('#tabs').tabs('update', {tab: currTab, options: {content: content, closable: true}});  
			}else{
				var content="<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src="+node.attributes.authPath+"></iframe>"
				$("#tabs").tabs("add",{
					title:node.text,
					iconCls:node.iconCls,
					closable:true,
					content:content
				});
			}
		}
	});
	
	
	function modifyPassword(){
		$("#fm").form("submit",{
			url:url,
			onSubmit:function(){
				/* var oldPassword=$("#oldPassword").val(); */
				var newPassword=$("#newPassword").val();
				var newPassword2=$("#newPassword2").val();
				if(!$(this).form("validate")){
					return false;
				}
				/* if(oldPassword!='${currentUser.password}'){
					$.messager.alert('系统提示','用户名密码输入错误！');
					return false;
				} */
				if(newPassword!=newPassword2){
					$.messager.alert('系统提示','确认密码输入错误！');
					return false;
				}
				return true;
			},
			success:function(result){
				var result=eval('('+result+')');
				if(result.errorMsg){
					$.messager.alert('系统提示',result.errorMsg);
					return;
				}else{
					$.messager.alert('系统提示','密码修改成功，下一次登录生效！');
					closePasswordModifyDialog();
				}
			}
		});
	}
	
	function closePasswordModifyDialog(){
		$("#dlg").dialog("close");
		$("#oldPassword").val("");
		$("#newPassword").val("");
		$("#newPassword2").val("");
	}
</script>
</head>
<body class="easyui-layout">
<div region="north" style="height: 68px;">
<div style="padding: 0px;margin: 0px;background-color: #E0ECFF;">
<table>
	<tr>
		<td><img src="${pageContext.request.contextPath}/images/majia.png"/></td>
		<td valign="bottom">欢迎：${currentUser.name }&nbsp;『${currentUser.roleName }』</td>
	</tr>
</table>
</div>
</div>
<div region="center">
	<div class="easyui-tabs" fit="true" border="false" id="tabs">
		<div title="首页" data-options="iconCls:'icon-home'">
			<div align="center" style="padding-top: 100px;"><font color="red" size="10">欢迎使用</font></div>
		</div>
	</div>
</div>
<div region="west" style="width: 230px;padding: 5px;" title="导航菜单" split="true">
<ul id="tree" class="easyui-tree"></ul>
</div>
<div region="south" style="height: 25px;padding: 5px;" align="center">
	版权所有 IM平台管理 
</div>

<div id="dlg" class="easyui-dialog" style="width: 400px;height: 220px;padding: 10px 20px" 
 closed="true" buttons="#dlg-buttons" data-options="iconCls:'icon-modifyPassword'">
 <form id="fm" method="post">
 	<table cellspacing="4px;">
 		<tr>
 			<td>用户名：</td>
 			<td><input type="hidden" name="userId" id="userId" value="${currentUser.id}"><input type="text" name="name" id="userName" readonly="readonly" value="${currentUser.name }" style="width: 200px;" /></td>
 		</tr>
 		<tr>
 			<td>原密码：</td>
 			<td><input type="password" class="easyui-validatebox" name="oldPassword" id="oldPassword" style="width: 200px;" required="true" /></td>
 		</tr>
 		<tr>
 			<td>新密码：</td>
 			<td><input type="password" class="easyui-validatebox" name="newPassword" id="newPassword" style="width: 200px;" required="true"  /></td>
 		</tr>
 		<tr>
 			<td>确认新密码：</td>
 			<td><input type="password" class="easyui-validatebox" name="newPassword2" id="newPassword2" style="width: 200px;" required="true" /></td>
 		</tr>
 	</table>
 </form>
</div>
<div id="dlg-buttons">
	<a href="javascript:modifyPassword()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	<a href="javascript:closePasswordModifyDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>
</body>
</html>