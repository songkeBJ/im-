<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<link href="${pageContext.request.contextPath}/favicon.ico" rel="icon" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/style/alogin.css" rel="stylesheet" type="text/css" />

<title>会员登录</title>
<script type="text/javascript">
	function loadimage(){
		document.getElementById("randImage").src="${pageContext.request.contextPath}/images/image.jsp?"+Math.random();
	}
</script>
</head>
<body>
<form id="form1" name="form1" action="" method="post">
	<div class="MAIN">
		<ul>
			<li class="top"></li>
			<li class="top2"></li>
			<li class="topA"></li>
			<li class="topB">
			<span> 
					<a href="#" target="_blank"><img src="${pageContext.request.contextPath}/images/login/20170609233334.png" alt="" style="" /></a>
				</span>
			</li>
			<li class="topC"></li>
			<li class="topD">
			<ul class="login">
				<br>
				<br>
				<li><span class="left">手机号：</span> <span style=""> <input id="userName" name="phoneNumber" type="text" class="txt" value="${userName }" /> </span></li>
				<li><span class="left">密&nbsp;&nbsp;&nbsp;码：</span> <span style=""> <input id="password" name="password" type="password" class="txt" value="${password }" onkeydown= "if(event.keyCode==13)form1.submit()"/> </span></li>
				<li><span class="left">验证码：</span> <span style=""> <input type="text" value="${imageCode }" name="imageCode"  class="txtCode" id="imageCode" size="10" onkeydown= "if(event.keyCode==13)form1.submit()"/>&nbsp;<img onclick="javascript:loadimage();"  title="换一张试试" name="randImage" id="randImage" src="${pageContext.request.contextPath}/images/image.jsp" width="60" height="20" border="1" align="absmiddle" style="cursor:pointer"> </span></li>
			</ul>
			</li>
			<li class="topE"></li>
			<li class="middle_A"></li>
			<li class="middle_B"></li>
			<li class="middle_C"><span class="btn"> <img alt="" src="${pageContext.request.contextPath}/images/login/btnlogin.gif" onclick="javascript:document.getElementById('form1').submit()" style="cursor:pointer"/> </span>&nbsp;&nbsp;<span ><font color="red">${error }</font></span></li>
			<li class="middle_D"></li>
			<li class="bottom_A"></li>
			<li class="bottom_B">平台管理系统 www.recharge_Platform.com</li>
		</ul>
	</div>
</form>
</body>
</html>