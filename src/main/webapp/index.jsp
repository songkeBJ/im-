<%@ page contentType="text/html; charset=UTF-8"%>
<meta id="viewport" name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1; user-scalable=no;">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>旺旺IM</title>
<link rel="stylesheet" href="css/min.css">
<style type="text/css">
@charset "utf-8";
/* CSS Document */
body,h1,h2,h3,h4,h5,h6,hr,p,blockquote,dl,dt,dd,ul,ol,li,pre,form,fieldset,legend,button,input,textarea,th,td{margin:0;padding:0; list-style:none;font-family: "微软雅黑"; -webkit-appearance: none;}
a{color:#2b2b2b; text-decoration:none}
body{ font-size:12px;}
img { border:0px;}

.main{
	width:100%;
	min-width: 320px;
	max-width: 640px; 
	margin: 0 auto;
	background: url(./images/bg.jpg) center center no-repeat;

    background-size: auto auto;
	background-size: cover;
	background-position: center;
	position: relative;
}
.ewm{width:35%; margin:0 auto; position:relative; text-align:center; padding:85% 0 15%}
.ewm .img img{width:100%;}
.ewm .tit{height:2rem; line-height:2rem; text-align:center; color:#ccc; font-size:1rem; margin-bottom:8rem;}
</style>
</head>

<body>
	<div class="main">
    	<div class="ewm">
            <p class="img"><img src="api/qr/downQRCode.do" /></p>
            <p class="tit">App下载</p>
        </div>
    </div>
</body>
</html>
