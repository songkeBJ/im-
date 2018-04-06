<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统参数配置管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$.post("${pageContext.request.contextPath}/agentUser/SysAboutUsInfo.do",{id:1},function(result){
							$("#about").val(result.about);
				},"json");
function saveInfo(){
	$.post("${pageContext.request.contextPath}/agentUser/saveSysAboutUsInfo.do",{about:$("#about").val()},function(result){
		if(result.success){
			alert("保存成功")
		}
	},"json");
}
</script>
</head>
<body style="margin: 200px;">

<div id="tb">

	<form action="">
		<textArea  name="about" id="about" rows="10" cols="40"></textArea> <br><br>
		<div id="dlg-buttons">
			<a href="javascript:saveInfo()" class="easyui-linkbutton" iconCls="icon-ok" >保存</a>
		</div>
	</form>
</div>

</body>
</html>