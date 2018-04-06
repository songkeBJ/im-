<%@ page contentType="text/html; charset=UTF-8"%>
<meta id="viewport" name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1; user-scalable=no;">
<html>
<link href="favicon.ico" rel="icon" type="image/x-icon" />
<script src="https://app.cloopen.com/im50/ytx-web-im-min-new.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/md5.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>

<script language="javascript" type="text/javascript"> 
Date.prototype.pattern=function(fmt) {         
    var o = {         
    "M+" : this.getMonth()+1, //月份         
    "d+" : this.getDate(), //日         
    "h+" : this.getHours()%12 == 0 ? 12 : this.getHours()%12, //小时         
    "H+" : this.getHours(), //小时         
    "m+" : this.getMinutes(), //分         
    "s+" : this.getSeconds(), //秒         
    "q+" : Math.floor((this.getMonth()+3)/3), //季度         
    "S" : this.getMilliseconds() //毫秒         
    };         
    var week = {         
    "0" : "/u65e5",         
    "1" : "/u4e00",         
    "2" : "/u4e8c",         
    "3" : "/u4e09",         
    "4" : "/u56db",         
    "5" : "/u4e94",         
    "6" : "/u516d"        
    };         
    if(/(y+)/.test(fmt)){         
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));         
    }         
    if(/(E+)/.test(fmt)){         
        fmt=fmt.replace(RegExp.$1, ((RegExp.$1.length>1) ? (RegExp.$1.length>2 ? "/u661f/u671f" : "/u5468") : "")+week[this.getDay()+""]);         
    }         
    for(var k in o){         
        if(new RegExp("("+ k +")").test(fmt)){         
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));         
        }         
    }         
    return fmt;         
}       
     


</script>
<script >
//初始化SDK
function secondStep(){
	var phoneNumber =$("#username").val();
	alert(phoneNumber);
	login(phoneNumber);
}
//login("18510829662");
//login("18510829664");
//login("18510829668");
//login("18510829669");
function login(number){
	var resp = RL_YTX.init("8aaf07085c62aa66015c85afe6cb0d58"); 
	var date = new Date();      
	var times =date.pattern("yyyyMMddhhmmss");
	var sig=hex_md5("8aaf07085c62aa66015c85afe6cb0d58"+number+times+"51d011f971861cf172eeffdbd4770d66");
	//账号登录参数设置
	var loginBuilder = new RL_YTX.LoginBuilder();
	loginBuilder.setType(1);//登录类型 1账号登录，3voip账号密码登录
	loginBuilder.setUserName(number);//设置用户名
	loginBuilder.setPwd();//type值为1时，密码可以不赋值
	loginBuilder.setSig(sig);//设置sig
	loginBuilder.setTimestamp(times);//设置时间戳
	//执行用户登录
	RL_YTX.login(loginBuilder, function(data){
	    //登录成功回调
		RL_YTX.onMsgReceiveListener(function(data){
		//收到push消息或者离线消息或判断输入状态
		//如果obj.msgType==12  判断obj.msgDomainn的值
		//obj.msgDomain 0 无输入状态  1 正在输入  2 正在录音
		});
	    //注册群组通知事件监听
	    RL_YTX.onNoticeReceiveListener(function(data){
		//收到群组通知
	});
	RL_YTX.onConnectStateChangeLisenter(function(data){
	        //连接状态变更
		// obj.code;//变更状态 1 断开连接 2 重连中 3 重连成功 4 被踢下线 5 断开连接，需重新登录
		// 断线需要人工重连
	});
	}, function(data){
	    //登录失败方法回调
	})
}


</script>

<body>
<h2>Hello World!我们都是好孩子</h2>
<form name="from1" action="user/showuser.do" method="post">
<table width="300" border="1">

<tr>
    <td colspan="2"> 登录窗口</td>
</tr>
<tr>
    <td > 用户名</td>
    <td > <input type="text"  id="username" name="username" size="10"></td>
</tr>

<tr>
    <td > 密码</td>
    <td > <input type="password" name="password" size="10"></td>
</tr>

<tr>
     <td colspan ="2"> <input type="button" onclick="secondStep()" value="登录">
     <a href="user/register.do">注册新用户</a></td>
</tr>

 </table>

</form>


<form name="from2" action="user/register.do" method="post">
<table width="300" border="1">

<tr>
    <td colspan="2"> 登录窗口</td>
</tr>
<tr>
    <td > 用户名</td>
    <td > <input type="text" name="username" size="10"></td>
</tr>

<tr>
    <td > 密码</td>
    <td > <input type="password" name="password" size="10"></td>
</tr>

<tr>
     <td colspan ="2"> <input type="submit" name="submit" value="注册">
</tr>

 </table>

</form>



</body>
</html>
