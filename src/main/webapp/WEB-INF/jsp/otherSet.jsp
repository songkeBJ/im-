<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>其他设置</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/icon.css" />
<style type="text/css">
	li{ float:left; list-style:none;}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(function(){
	$('#itemAddForm').form('load','/im/admin/getOtherSet.do');
})
//提交表单
function submitForm(){
	//有效性验证
	if(!$('#itemAddForm').form('validate')){
		$.messager.alert('提示','表单还未填写完成!');
		return ;
	}
	$.post("/im/admin/updateOtherSet.do",$("#itemAddForm").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示','修改配置成功!');
		}else{
			$.messager.alert('提示','修改配置失败,请与管理员联系!');
		}
	});
}

function clearForm(){
	$('#itemAddForm').form('reset');
}

</script>
</head>
<body style="margin: 1px;">
<div id="win" class="easyui-window" title="其他设置" fit="true"   
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm" class="itemForm" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>提现手续费率(%):</td>
	            <td><input class="easyui-numberbox" type="text" name="cashFee" data-options="required:true,min:0,precision:2" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>客服电话:</td>
	            <td><input class="easyui-textbox" type="text" name="serviceNo" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>资讯视频最大上传大小(Mb):</td>
	            <td><input class="easyui-textbox" type="text" name="maxSize" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
	
</div>  
</div>  

</body>
</html>