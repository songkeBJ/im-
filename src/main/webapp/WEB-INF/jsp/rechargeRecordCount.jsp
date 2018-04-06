<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>充值统计</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
</head>
<body style="margin: 1px;">
<table id="dg" title="充值统计" class="easyui-datagrid" fitColumns="true" 
    pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/rechargeRecordCountList.do" fit="true" toolbar="#tb">
    <thead>
    	<tr>
    		<th field="today" width="50" align="center">今日充值金额</th>
    		<th field="month" width="50" align="center">本月充值金额</th>
    		<th field="all" width="50" align="center" >总充值金额</th>
    		<th field="p1" width="50" align="center" >手动充值金额</th>
    	</tr>
    </thead>
</table>
<div id="tb">
	<div>
	</div>
	<div>
	</div>
</div>
</body>
</html>