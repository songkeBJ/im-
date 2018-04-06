<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>版本管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery-form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$.post("${pageContext.request.contextPath}/admin/versionList.do",{id:1},function(result){
							$("#androidVersion").val(result.androidVersion);
							$("#androidPath").val(result.androidPath);
							$("#iosVersion").val(result.iosVersion);
							$("#iosPath").val(result.iosPath);
				},"json");
function saveInfo(){
	$.post("${pageContext.request.contextPath}/admin/saveVersion.do",{androidVersion:$("#androidVersion").val(),androidPath:$("#androidPath").val(),iosPath:$("#iosPath").val(),iosVersion:$("#iosVersion").val()},function(result){
		if(result.success){
			alert("保存成功")
		}
	},"json");
}
</script>
</head>
<body style="margin: 200px;">

<div id="tb">

		安卓版本：<input type="text" value="" name="androidVersion"  id="androidVersion" disabled="true"><br><br>
		ios版本：<input type="text" value="" name="iosVersion" id="iosVersion" ><br><br>
		安卓下载路径：<input type="text" value="" name="androidPath"  id="androidPath" disabled="true">
		<form  id="uploadForm" name="uploadForm" enctype="multipart/form-data">
            <label>文件</label> <input type="file" name="file">
            <label id="balval"></label>
            <button class="btn" type="button" id="doSave">上传apk文件</button>
    </form><br><br>
		ios下载路径：<input type="text" value="" name="iosPath"  id="iosPath"><br><br>
      
		<div id="dlg-buttons">
			<a href="javascript:saveInfo()" class="easyui-linkbutton" iconCls="icon-ok" >保存</a>
		</div>
	
	
</div>
<script>
    $(function() {
        $("#doSave") .click( function() {
        	$("#balval").html("文件上传中！请勿进行其他操作！");
                 $("#uploadForm").ajaxSubmit(
                         {
                                type : 'post',
                                url : "${pageContext.request.contextPath}/admin/versionUpload.do",

        //data:  //注意只要是写在表单里面的，都不需要加这个属性。在controller中可以根据@RequestParam String str获取到属性值。    
    contentType : "application/x-www-form-urlencoded; charset=utf-8",
        success: function(data) {
                  //接受到的data还只是一个字符串，需要转成json对象
                  var obj = JSON.parse(data);
                  if(obj.flag==true){
                	  $("#androidPath").val(obj.path);
                    alert("上传成功"+obj.path);
                    $("#androidVersion").removeAttr("disabled");
                    $("#balval").html("");
              }else{
                  alert("error");
              }
                },
                error: function (data)//服务器响应失败处理函数
                {
                    alert("出错");
                }  
              });
    });
    });  
    </script>
</body>
</html>