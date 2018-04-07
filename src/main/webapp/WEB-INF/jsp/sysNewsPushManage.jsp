<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统消息推送</title>
<link href="${pageContext.request.contextPath}/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/icon.css" />
<style type="text/css">
	li{ float:left; list-style:none;}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<script type="text/javascript">

var url;
var newsType;
var itemAddEditor ;
//提交表单
function submitForm(){
	//有效性验证
	if(!$('#itemAddForm').form('validate')){
		$.messager.alert('提示','表单还未填写完成!');
		return ;
	}
		//同步文本框中的商品描述
		itemAddEditor.sync();
	//ajax的post方式提交表单
	//$("#itemAddForm").serialize()将表单序列号为key-value形式的字符串
	//alert($("#itemAddForm").serialize());
	$.post("/im/admin/sysNewsPush.do",$("#itemAddForm").serialize(), function(data){
		if(data.success){
			$.messager.alert('提示','推送系统消息成功!');
			$("#dg").datagrid("reload");
		}else{
			$.messager.alert('提示',data.errorDescription);
		}
	});
}

function clearForm(){
	$('#itemAddForm').form('reset');
	itemAddEditor.html('');
}
$(function(){
	$("#dg2").datagrid({
		onDblClickRow:function(rowIndex,rowData){
			chooseRole();
		}
	});
	
	//创建富文本编辑器
	itemAddEditor = E3.createEditor("#itemAddForm [name=content]");
	//初始化类目选择和图片上传器
	E3.init({fun:function(node){
		//根据商品的分类id取商品 的规格模板，生成规格信息。第四天内容。
		//E3.changeItemParam(node, "itemAddForm");
	}});
})

//发布资讯
function addNews(){
	$('#selectWin').window('open');
}
//发布图文资讯
function addImageNews(){
	$('#win').window('open');
	$('#selectWin').window('close');
}

</script>
<script type="text/javascript">  
        
        function uploadPic() {  
            // 上传设置  
            var options = {  
                    // 规定把请求发送到那个URL  
                    url: "/im/member/uploadFile.do?dir=image",  
                    // 请求方式  
                    type: "post",  
                    // 服务器响应的数据类型  
                   // dataType: "json",  
                    // 请求成功时执行的回调函数  
                    success: function(data, status, xhr) {  
                    	json=eval('('+data+')');
                    	if(json.error==1){
                    		$.messager.alert("提示",json.message);
            				return;
                    	}
                        // 图片显示地址  
                        $("#allUrl").attr("src", json.url); 
                        //在表单中添加一行,包括1.url的input;2.描述的input;3,删除按钮
                        document.getElementById("pic").innerHTML+="<div>图片:<img width='100' height='100' src="+json.url+"> <input name='picUrl' type='hidden' value="+json.url+" > 图片描述:<textarea name='picDesc'></textarea> <input type='button' value='删掉' onclick='delOne(this)' ></div>";
                    }  
            };  
              
            $("#jvForm").ajaxSubmit(options);  
        }
        function uploadPic1() {  
            // 上传设置  
            var options = {  
                    // 规定把请求发送到那个URL  
                    url: "/im/member/uploadFile.do?dir=image",  
                    // 请求方式  
                    type: "post",  
                    // 服务器响应的数据类型  
                   // dataType: "json",  
                    // 请求成功时执行的回调函数  
                    success: function(data, status, xhr) {  
                    	json=eval('('+data+')');
                    	if(json.error==1){
                    		$.messager.alert("提示",json.message);
            				return;
                    	}
                        // 图片显示地址  
                        $("#allUrl1").attr("src", json.url); 
                        //在表单中添加一行,包括1.url的input;2.描述的input;3,删除按钮
                        document.getElementById("pic1").innerHTML+="<div>图片:<img width='100' height='100' src="+json.url+"> <input name='picUrl' type='hidden' value="+json.url+" > 图片描述:<textarea name='picDesc'></textarea> <input type='button' value='删掉' onclick='delOne(this)' ></div>";
                    }  
            };  
              
            $("#jvForm1").ajaxSubmit(options);  
        }
        
        
</script> 
</head>
<body style="margin: 1px;">


<div id="win" class="easyui-window" title="推送图文消息" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm" class="itemForm" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td style="width: 50px;">消息标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td style="width: 50px;">消息正文:</td>
	            <td>
	                <textarea style="width:1000px;height:350px;visibility:hidden;" name="content"></textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
	
</div>  
</div>

<div id="selectWin" class="easyui-window" title="推送系统消息" fit="true"   
        data-options="iconCls:'icon-save',modal:true"> 
   <table  cellpadding="5">
	 <tr>
	 <td>
		<a href="javascript:addImageNews()" class="easyui-linkbutton" iconCls="icon-add" plain="true">推送系统消息</a>
	</td>
	</tr>
   </table>
</div>  
</body>
</html>