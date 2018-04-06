<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/favicon.ico" rel="icon" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>IM会员后台</title>
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
			url:'${pageContext.request.contextPath}/member/menuList.do',
			onLoadSuccess:function(){
				$("#tree").tree('expandAll');
			},
			onClick:function(node){
				if(node.id==4){
					logout();
				}else if(node.id==3){
					openPasswordModifyDialog();
				}else if(node.id==100){
					openPasswordModifyDialog2();
				}else if(node.attributes.authPath){
					openTab(node);
				}
			}
		});
	})
		function logout(){
			$.messager.confirm('系统提示','您确定要退出系统吗？',function(r){
				if(r){
					window.location.href='logout.do';
				}
			});
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
</script>
</head>
<body class="easyui-layout">

<div region="center">
	<div class="easyui-tabs" fit="true" border="false" id="tabs">
		<div title="首页" data-options="iconCls:'icon-home'">
			<div align="center" style="padding-top: 100px;"><font color="red" size="10">欢迎使用</font></div>
		</div>
	</div>
</div>
<div region="west" style="width: 160px;padding: 5px;" title="导航菜单" split="true">
<ul id="tree" class="easyui-tree"></ul>
</div>
<div region="south" style="height: 25px;padding: 5px;" align="center">
	会员平台
</div>


</body>
</html>