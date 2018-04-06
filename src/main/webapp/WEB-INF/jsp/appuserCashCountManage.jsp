<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员充值统计</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
</head>
<script type="text/javascript">
$.post("${pageContext.request.contextPath}/admin/getAllUserPay.do",{id:1},function(result){
	$("#allPay").val(result.allPay);
},"json");
$.post("${pageContext.request.contextPath}/admin/getAllDayUserPay.do",{id:1},function(result){
	$("#allDayPay").val(result.allDayPay);
},"json");
$.post("${pageContext.request.contextPath}/admin/getAllMonthUserPay.do",{id:1},function(result){
	$("#allMonthPay").val(result.allMonthPay);
},"json");
</script>

<body style="margin: 1px;">
<table id="dg" title="会员充值统计 " class="easyui-datagrid" fitColumns="true" 
    pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/appuserCashCount.do" fit="true" toolbar="#tb">
    <thead>
    	<tr>
    		<th field="username" width="50" align="center">会员名称</th>
    		<th field="phoneNumber" width="50" align="center">手机号码</th>
    		<th field="dayCount" width="50" align="center">今日充值数额</th>
    		<th field="monthCount" width="50" align="center">本月充值数额</th>
    		<th field="allCount" width="50" align="center" >总充值数额</th>
    	</tr>
    </thead>
</table>
<div id="tb">
	<div>
		&nbsp;会员当日总充值金额：&nbsp;<input type="text" name="allDayPay" id="allDayPay" size="20" readonly />元
		&nbsp;会员本月总充值金额：&nbsp;<input type="text" name="allMonthPay" id="allMonthPay" size="20" readonly />元
		&nbsp;会员当前总充值金额：&nbsp;<input type="text" name="allPay" id="allPay" size="20" readonly />元
	</div>
</div>
</body>
</html>