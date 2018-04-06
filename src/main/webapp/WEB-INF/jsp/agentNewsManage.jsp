<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>今日新闻管理</title>
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
var itemAddEditor1 ;
var itemAddEditor2 ;
var itemAddEditor3 ;
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
	$.post("/im/member/addNews.do?imgOrVedio=Image",$("#itemAddForm").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示','发布资讯成功!');
			$("#dg").datagrid("reload");
		}else{
			$.messager.alert('提示',data.errorDescription);
		}
	});
}
//提交表单1
function submitForm1(){
	//有效性验证
	if(!$('#itemAddForm1').form('validate')){
		$.messager.alert('提示','表单还未填写完成!');
		return ;
	}
		//同步文本框中的商品描述
		itemAddEditor1.sync();
	//ajax的post方式提交表单
	//$("#itemAddForm").serialize()将表单序列号为key-value形式的字符串
	//alert($("#itemAddForm").serialize());
	$.post("/im/member/updateNews.do?imgOrVedio=Image",$("#itemAddForm1").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示','修改资讯成功!');
			$("#dg").datagrid("reload");
		}else{
			$.messager.alert('提示',data.errorDescription);
		}
	});
}
//提交表单2
function submitForm2(){
	//有效性验证
	if(!$('#itemAddForm2').form('validate')){
		$.messager.alert('提示','表单还未填写完成!');
		return ;
	}
		//同步文本框中的商品描述
		itemAddEditor2.sync();
	//ajax的post方式提交表单
	//$("#itemAddForm").serialize()将表单序列号为key-value形式的字符串
	//alert($("#itemAddForm").serialize());
	$.post("/im/member/addNews.do?imgOrVedio=Vedio",$("#itemAddForm2").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示','发布资讯成功!');
			$("#dg").datagrid("reload");
		}else{
			$.messager.alert('提示','发布资讯失败,请与管理员联系!');
		}
	});
}
//提交表单3
function submitForm3(){
	//有效性验证
	if(!$('#itemAddForm3').form('validate')){
		$.messager.alert('提示','表单还未填写完成!');
		return ;
	}
		//同步文本框中的商品描述
		itemAddEditor3.sync();
	//ajax的post方式提交表单
	//$("#itemAddForm").serialize()将表单序列号为key-value形式的字符串
	//alert($("#itemAddForm").serialize());
	$.post("/im/member/updateNews.do?imgOrVedio=Video",$("#itemAddForm3").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示','修改资讯成功!');
			$("#dg").datagrid("reload");
		}else{
			$.messager.alert('提示','修改资讯失败,请与管理员联系!');
		}
	});
}
//提交表单4
function submitForm4(){
	//有效性验证
	/*  if(!$('#itemAddForm4').form('validate')){
		$.messager.alert('提示','表单还未填写完成!');
		return ;
	}  */
	
	if($("#itemAddForm4 [name='type']").val()==""){
		$.messager.alert('提示','资讯类型不能为空!');
		return ;
	}
	if($("#itemAddForm4 [name='title']").val()==""){
		$.messager.alert('提示','标题不能为空!');
		return ;
	}
	$.post("/im/member/addNews.do?imgOrVedio=Imgs",$("#itemAddForm4").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示',data.errorDescription);
			$("#dg").datagrid("reload");
		}else if(data.code == 1){
			$.messager.alert('提示',data.errorDescription);
		}else{
			$.messager.alert('提示',"发布资讯失败!");
		}
	});
}
//提交表单5
function submitForm5(){
	//有效性验证
	/*  if(!$('#itemAddForm4').form('validate')){
		$.messager.alert('提示','表单还未填写完成!');
		return ;
	}  */
	
	if($("#itemAddForm5 [name='type']").val()==""){
		$.messager.alert('提示','资讯类型不能为空!');
		return ;
	}
	if($("#itemAddForm5 [name='title']").val()==""){
		$.messager.alert('提示','标题不能为空!');
		return ;
	}
	$.post("/im/member/updateNews.do?imgOrVedio=Imgs",$("#itemAddForm5").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示',data.errorDescription);
			$("#dg").datagrid("reload");
		}else if(data.code == 1){
			$.messager.alert('提示',data.errorDescription);
		}else{
			$.messager.alert('提示',"修改资讯失败!");
		}
	});
}

function clearForm(){
	$('#itemAddForm').form('reset');
	itemAddEditor.html('');
}
function clearForm1(){
	$('#itemAddForm1').form('reset');
	itemAddEditor1.html('');
}
function clearForm2(){
	$('#itemAddForm2').form('reset');
	itemAddEditor2.html('');
}
function clearForm3(){
	$('#itemAddForm3').form('reset');
	itemAddEditor3.html('');
}
function clearForm4(){
	$('#itemAddForm4').form('reset');
	itemAddEditor4.html('');
}
function clearForm5(){
	$('#itemAddForm5').form('reset');
	itemAddEditor5.html('');
}
$(function(){
	//获取最新的资讯类型
	$.get("${pageContext.request.contextPath}/admin/getAllNewsType.do", function(data){
		newsType=data;
		});
	$("#dg2").datagrid({
		onDblClickRow:function(rowIndex,rowData){
			chooseRole();
		}
	});
	
	//创建富文本编辑器
	itemAddEditor = E3.createEditor("#itemAddForm [name=content]");
	itemAddEditor1 = E3.createEditor("#itemAddForm1 [name=content]");
	itemAddEditor2 = E4.createEditor("#itemAddForm2 [name=content]");
	itemAddEditor3 = E4.createEditor("#itemAddForm3 [name=content]");
	//初始化类目选择和图片上传器
	E3.init({fun:function(node){
		//根据商品的分类id取商品 的规格模板，生成规格信息。第四天内容。
		//E3.changeItemParam(node, "itemAddForm");
	}});
	E4.init({fun:function(node){
		//根据商品的分类id取商品 的规格模板，生成规格信息。第四天内容。
		//E3.changeItemParam(node, "itemAddForm");
	}});
})

//搜索用户
function searchUser(){
	$('#dg').datagrid('load',{
		keyword:$("#keyword").val(),
	});
}
//添加用户页面
function openUserAddDialog(){
	$("#dlg").dialog("open").dialog("setTitle","添加用户信息");
	$("#userName").removeAttr("readonly");
	url="saveUser.do";
}
//查看资讯页面
function editPass(){
	var selectedRows=$("#dg").datagrid('getSelections');
	if(selectedRows.length!=1){
		$.messager.alert('系统提示','请选择一条要查看的资讯！');
		return;
	}
	var row=selectedRows[0];
	if(row.imgOrVedio=="Image"){
		$("#dlgImage").dialog("open").dialog("setTitle","查看资讯详情");
		$("#fmImage").form("load",row);
		//先把上次浏览的图片删除
		$("#fmImage #ttimg").html("");
		//加载标题图片
		if(row.titleImages){
			imgs = row.titleImages.split(",");
			for(var i in imgs){
				if($.trim(imgs[i]).length > 0){
					$("#fmImage #ttimg").append("<li><a href='"+imgs[i]+"' target='_blank'><img src='"+imgs[i]+"' width='80' height='50' /></a></li>");
				}
			}
		}
		//加载资讯正文
		$("#fmImage #nc").attr('src',"${pageContext.request.contextPath}/admin/html.do?id="+row.id); 
	}else if(row.imgOrVedio=="Vedio"){
		$("#dlgVideo").dialog("open").dialog("setTitle","查看资讯详情");
		$("#fmVideo").form("load",row);
		//加载资讯正文
		$("#fmVideo #nc").attr('src',"${pageContext.request.contextPath}/admin/html.do?id="+row.id); 
	}else if(row.imgOrVedio=="Imgs"){
		$("#dlgImgs").dialog("open").dialog("setTitle","查看资讯详情");
		$("#fmImgs").form("load",row);
		//添加图片和描述
		var html="";
		if(row.imgsItems!=null){
			imgsList=row.imgsItems;
			for(var i=0;i<imgsList.length;i++){
				html+="<div>图片:<img width='100' height='100' src="+imgsList[i].picUrl+">  图片描述:<textarea name='picDesc' >"+imgsList[i].picDesc+"</textarea></div>";
			}
		}
		$("#fmImgs #imgsList").html(html);
	}
}
//保存用户
function saveUser(){
	$("#fm").form("submit",{
		url:url,
		onSubmit:function(){
			return $(this).form("validate");
		},
		success:function(result){
			var result=eval('('+result+')');
			if(result.errorMsg){
				$.messager.alert('系统提示',"<font color=red>"+result.errorMsg+"</font>");
				return;
			}else{
				$.messager.alert('系统提示','保存成功');
				closeUserAddDialog();
				$("#dg").datagrid("reload");
			}
		}
	});
}

//发布资讯
function addNews(){
	$('#selectWin').window('open');
}
//发布图文资讯
function addImageNews(){
	$('#win').window('open');
	$('#selectWin').window('close');
}
//发布视频资讯
function addVideoNews(){
	$('#winVedio').window('open');
	$('#selectWin').window('close');
}
//发布图集资讯
function addImgsNews(){
	$('#winImgs').window('open');
	$('#selectWin').window('close');
}

//锁定资讯
	function lock(status){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		var row=selectedRows[0];
		var msg="";
		if(status=="1"){
			msg ="您确认要锁定该条资讯吗";
		}else{
			msg ="您确认要解除锁定";
		}
			
		$.messager.confirm("系统提示",msg,function(r){
			if(r){
				$.post("updateNewsStatus.do",{id:row.id,status:status},function(result){
					if(result.success){
						$.messager.alert('系统提示',"操作成功");
						$("#dg").datagrid("reload");
					}else{
						$.messager.alert('系统提示',result.errorMsg);
					}
				},"json");
			}
		});
	}
//修改资讯
function editPass1(){
	//校验数据
	var selectedRows=$("#dg").datagrid('getSelections');
	if(selectedRows.length!=1){
		$.messager.alert('系统提示','请选择一条要修改的资讯！');
		return;
	}
		var row=selectedRows[0];
	if(row.imgOrVedio=='Image'){
		//数据回显
		$("#itemAddForm1").form("load",row);
		//清除上次的标题图片
		$("#table1 .pics").find("ul").html("");
		//加载资讯正文
		if(row.content){
			itemAddEditor1.html(row.content);
		}
		$('#win1').window('open');
	}else if(row.imgOrVedio=='Vedio'){
		//数据回显
		$("#itemAddForm3").form("load",row);
		//加载资讯正文
		if(row.content){
			itemAddEditor3.html(row.content);
		}
		$('#winVedio1').window('open');
	}else if(row.imgOrVedio=='Imgs'){
		//数据回显
		$("#itemAddForm5").form("load",row);
		//加载资讯正文
		//添加图片和描述
		var html="";
		if(row.imgsItems!=null){
			imgsList=row.imgsItems;
			for(var i=0;i<imgsList.length;i++){
				html+="<div>图片:<img width='100' height='100' src="+imgsList[i].picUrl+"> <input name='picUrl' type='hidden' value="+imgsList[i].picUrl+" > 图片描述:<textarea name='picDesc'>"+imgsList[i].picDesc+"</textarea> <input type='button' value='删掉' onclick='delOne(this)' ></div>";
			}
		}
		$("#pic1").html(html);
		$('#winImgs1').window('open');
	}
}
//锁定资讯
	function lock(status){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		var row=selectedRows[0];
		var msg="";
		if(status=="1"){
			msg ="您确认要锁定该条资讯吗";
		}else{
			msg ="您确认要解除锁定";
		}
			
		$.messager.confirm("系统提示",msg,function(r){
			if(r){
				$.post("updateNewsStatus.do",{id:row.id,status:status},function(result){
					if(result.success){
						$.messager.alert('系统提示',"操作成功");
						$("#dg").datagrid("reload");
					}else{
						$.messager.alert('系统提示',result.errorMsg);
					}
				},"json");
			}
		});
	}

function closeUserAddDialog(){
	$("#dlg").dialog("close");
	$("#fm").form('clear');
}

function closeUserAddDialog2(){
	$("#dlg2").dialog("close");
	$("#fm2").form('clear');
}


function openRoleChooseDialog(){
	$("#dlg2").dialog("open").dialog("setTitle","选择角色");
}

function searchRole(){
	$('#dg2').datagrid('load',{
		s_roleName:$("#s_roleName").val()
	});
}

function closeRoleDialog(){
	$("#s_roleName").val("");
	$('#dg2').datagrid('load',{
		s_roleName:""
	});
	$("#dlg2").dialog("close");
}

function chooseRole(){
	var selectedRows=$("#dg2").datagrid('getSelections');
	if(selectedRows.length!=1){
		$.messager.alert('系统提示','请选择一个角色！');
		return;
	}
	var row=selectedRows[0];
	$("#roleId").val(row.id);
	$("#roleName").val(row.name);
	closeRoleDialog();
}

function delNews(){
	var selectedRows=$("#dg").datagrid('getSelections');
	if(selectedRows.length==0){
		$.messager.alert('系统提示','请选择要删除的数据！');
		return;
	}
	var strIds=[];
	for(var i=0;i<selectedRows.length;i++){
		strIds.push(selectedRows[i].id);
	}
	var ids=strIds.join(",");
	$.messager.confirm("系统提示","您确认要删除这<font color=red>"+selectedRows.length+"</font>条数据吗？",function(r){
		if(r){
			$.post("deleteNews.do",{delIds:ids},function(result){
				if(result.success){
					$.messager.alert('系统提示',"您已成功删除<font color=red>"+result.delNums+"</font>条数据！");
					$("#dg").datagrid("reload");
				}else{
					$.messager.alert('系统提示',result.errorMsg);
				}
			},"json");
		}
	});
}
//格式化金额
function initBalance(val,row){
	return "<font color=red>"+val+"</font> (元)";
}
function initLable(val,row){
	if(val=="0"){
		return "置顶";
	}else if(val=="1"){
		return "推荐";
	}else{
		return "";
	}
}
//格式化类型
function initType(val,row){
	for(i=0;i<newsType.length;i++){
		if(newsType[i].code==val){
			return newsType[i].name;
		}
	}
	return "未知类型";
}
//格式化性别
function initStatus(val,row){
	if(val=="1"){
		return "锁定";
	}else{
		return "正常";
	}
}

//修改用户页面
function editMoney(status){
	var selectedRows=$("#dg").datagrid('getSelections');
	if(selectedRows.length!=1){
		$.messager.alert('系统提示','请选择一条要编辑的数据！');
		return;
	}
	var row=selectedRows[0];
	
	var msg="";
	if(status==0){
		msg="充值"
	}else{
		msg="扣除"
	}
	
	$("#dlg2").dialog("open").dialog("setTitle",msg);
	$("#fm2").form('clear');
	url="updateRechargeRe.do?id="+row.userId+"&status="+status;
}
//保存用户
function saveUser2(){
	$("#fm2").form("submit",{
		url:url,
		onSubmit:function(){
			return $(this).form("validate");
		},
		success:function(result){
			var result=eval('('+result+')');
			if(result.errorMsg){
				$.messager.alert('系统提示',"<font color=red>"+result.errorMsg+"</font>");
				return;
			}else{
				$.messager.alert('系统提示','保存成功');
				closeUserAddDialog2();
				$("#dg").datagrid("reload");
			}
		}
	});
}
</script>
<script type="text/javascript">  
        
        function delOne(btn){  
        	var div=btn.parentNode; 
            div.innerHTML="";  
        } 
        
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

<div id="winImgs1" class="easyui-window" title="修改图集资讯" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm5" method="post" >
					<input type="hidden" name="id" />
	                 <input type="hidden" name="userId" value="${currentUser.user_id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td>资讯类型:</td>
	            <td>
	            	<input id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td>资讯标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	    </table>
	  	<div id="pic1">
	  	</div>
	  
	  
	  
	  
	</form>
	
	<form id="jvForm1" name="jvForm1" method="post" enctype="multipart/form-data">  
        <table>  
            <tbody>  
                <tr>  
                    <td width="20%">  
                        <span>*</span>  
                        上传图片:</td>  
                        <td width="80%">  
                        注:该图片大小不大于1M。  
                    </td>  
                </tr>  
                <tr>  
                    <td width="20%"></td>  
                        <td width="80%">  
                        <img width="100" height="100" id="allUrl1"/>  
                        <!-- 在选择图片的时候添加事件，触发Ajax异步上传 -->  
                        <input name="pic1" type="file" onchange="uploadPic1()" style="display: none;"/>  
                        <input type="button" value="点此上传图片" onclick="document.jvForm1.pic1.click()"/>
                    </td>  
                </tr>  
            </tbody>  
        </table>  
    </form>  
	
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm5()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm5()">重置</a>
	</div>
	
</div>  
</div>
<div id="winImgs" class="easyui-window" title="发布图集资讯" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm4" method="post" >
	                 <input type="hidden" name="userId" value="${currentUser.user_id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td>资讯类型:</td>
	            <td>
	            	<input id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td>资讯标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	    </table>
	  	<div id="pic">
	  	</div>
	  
	  
	  
	  
	</form>
	
	<form id="jvForm" name="jvForm" method="post" enctype="multipart/form-data">  
        <table>  
            <tbody>  
                <tr>  
                    <td width="20%">  
                        <span>*</span>  
                        上传图片:</td>  
                        <td width="80%">  
                        注:该图片大小不大于1M。  
                    </td>  
                </tr>  
                <tr>  
                    <td width="20%"></td>  
                        <td width="80%">  
                        <img width="100" height="100" id="allUrl"/>  
                        <!-- 在选择图片的时候添加事件，触发Ajax异步上传 -->  
                        <input name="pic" type="file" onchange="uploadPic()" style="display: none;"/>  
                        <input type="button" value="点此上传图片" onclick="document.jvForm.pic.click()"/>
                    </td>  
                </tr>  
            </tbody>  
        </table>  
    </form>  
	
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm4()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm4()">重置</a>
	</div>
	
</div>  
</div>

<div id="win" class="easyui-window" title="发布图文资讯" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm" class="itemForm" method="post">
	                 <input type="hidden" name="userId" value="${currentUser.user_id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td>资讯类型:</td>
	            <td>
	            	<input id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td>资讯标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>标题图片<font color="red">(最多三张,多的也不会在app显示)</font>:</td>
	            <td>
	            	 <a href="javascript:void(0)" class="easyui-linkbutton picFileUpload">上传图片</a>
	                 <input type="hidden" name="titleImages"/>
	            </td>
	        </tr>
	        <tr>
	            <td>资讯正文:</td>
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

<div id="winVedio" class="easyui-window" title="发布视频资讯" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm2" class="itemForm" method="post">
	                 <input type="hidden" name="userId" value="${currentUser.user_id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td>资讯类型:</td>
	            <td>
	            	<input id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td>资讯标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>资讯视频播放总时长<font color=red>(时:分:秒)</font>:</td>
	            <td><input class="easyui-timespinner" type="text" name="playLength" data-options="required:true,min:'00:00',showSeconds:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>资讯正文视频<font color='red'>(只能上传一个)</font>:</td>
	            <td>
	                <textarea style="width:1000px;height:350px;visibility:hidden;" name="content"></textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm2()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm2()">重置</a>
	</div>
	
</div>  
</div>
<div id="winVedio1" class="easyui-window" title="修改视频资讯" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm3" class="itemForm" method="post">
					<input type="hidden" name="id" />
	                 <input type="hidden" name="userId" value="${currentUser.user_id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td>资讯类型:</td>
	            <td>
	            	<input id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td>资讯标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>资讯视频播放总时长<font color=red>(时:分:秒)</font>:</td>
	            <td><input class="easyui-timespinner" type="text" name="playLength" data-options="required:true,min:'00:00',showSeconds:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>资讯正文视频<font color='red'>(只能上传一个)</font>:</td>
	            <td>
	                <textarea style="width:1000px;height:350px;visibility:hidden;" name="content"></textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm3()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm3()">重置</a>
	</div>
	
</div>  
</div>
<div id="selectWin" class="easyui-window" title="发布资讯" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
   <table  cellpadding="5">
	 <tr>
	 <td>
		<a href="javascript:addImageNews()" class="easyui-linkbutton" iconCls="icon-add" plain="true">发布图文资讯</a>
	</td>
	</tr>
	<tr>
	<td>
		<a href="javascript:addVideoNews()" class="easyui-linkbutton" iconCls="icon-add" plain="true">发布视频资讯</a>
	</td>
	</tr>
	<tr>
	<td>
		<a href="javascript:addImgsNews()" class="easyui-linkbutton" iconCls="icon-add" plain="true">发布图集资讯</a>
	</td>
	</tr>
   </table>
</div>  
<div id="win1" class="easyui-window" title="修改图文资讯" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm1" class="itemForm" method="post">
	                 <input type="hidden" name="id" />
	                 <input type="hidden" name="userId" value="${currentUser.user_id }" />
	    <table id="table1" cellpadding="5">
	        <tr>
	            <td>资讯类型:</td>
	            <td>
	            	<input  class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td>资讯标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr >
	        	<td colspan="2"><font color="red">注意:(如果不需要修改标题图片就不需上传,如果上传图片会覆盖原有标题图片)</font></td>
	        </tr>
	        <tr>
	            <td>标题图片:</td>
	            <td>
	            	 <a href="javascript:void(0)" class="easyui-linkbutton picFileUpload">上传图片</a>
	                 <input type="hidden" name="titleImages"/>
	            </td>
	        </tr>
	        <tr>
	            <td>资讯正文:</td>
	            <td>
	                <textarea style="width:1000px;height:350px;visibility:hidden;" name="content"></textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm1()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm1()">重置</a>
	</div>
	
</div>  
</div>  
<table id="dg" title="资讯列表" class="easyui-datagrid" fitColumns="true" 
pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/member/newsList.do?userId=${currentUser.user_id}" fit="true" toolbar="#tb">
<thead>
	<tr>
		<th field="cb" checkbox="true" align="center"></th>
		<th field="title" width="50" align="center">资讯标题</th>
		<th field="type" width="50" align="center" formatter="initType">类型</th>
		<th field="nickName" width="50" align="center">发布人</th>
		<th field="createdTime" width="50" align="center">发布时间</th>
		<!-- <th field="lastModifiedTime" width="50" align="center"  formatter="initSex">最新修改时间</th> -->
		<th field="lable" width="50" align="center" formatter="initLable">特殊标签</th>
		<th field="isLocked" width="50" align="center" formatter="initStatus">状态</th>
		<th field="allCount" width="50" align="center" >投诉总次数</th>
	</tr>
</thead>
</table>
<div id="tb">
<div>
	<a href="javascript:addNews()" class="easyui-linkbutton" iconCls="icon-add" plain="true">发布资讯</a>
	<a href="javascript:editPass()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">查看</a>
	<a href="javascript:editPass1()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
	<a href="javascript:delNews()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
</div>
<div>
	&nbsp;标题关键字：&nbsp;<input type="text" name="keyword" id="keyword" size="20" onkeydown="if(event.keyCode==13) searchUser()"/>
	<a href="javascript:searchUser()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
</div>
</div>

<div id="dlgImgs" class="easyui-dialog" fit="true"
closed="true" buttons="#dlg-buttons">
<form id="fmImgs" method="post">
	             <input type="hidden" name="userId" value="${currentUser.user_id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td width="80px">资讯类型:</td>
	            <td>
	            	<input disabled="disabled" id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td style="width: 80px;">资讯标题:</td>
	            <td><input disabled="disabled" class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        
	    </table>
	        <div id="imgsList">
	        
	        </div>
	</form>
</div>
<div id="dlgImage" class="easyui-dialog" fit="true"
closed="true" buttons="#dlg-buttons">
<form id="fmImage" method="post">
	             <input type="hidden" name="userId" value="${currentUser.user_id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td width="80px">资讯类型:</td>
	            <td>
	            	<input disabled="disabled" id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td style="width: 80px;">资讯标题:</td>
	            <td><input disabled="disabled" class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td style="width: 80px;">标题图片:</td>
	            <td id="ttimg">
	            </td>
	        </tr>
	        
	        <tr>
	            <td style="width: 80px;">资讯正文:</td>
	            <td>
	                <iframe id="nc" src=""   frameborder="1" width="1000"></iframe>
	            </td>
	        </tr>
	    </table>
	</form>
</div>
<div id="dlgVideo" class="easyui-dialog" fit="true"
closed="true" buttons="#dlg-buttons">
<form id="fmVideo" method="post">
	             <input type="hidden" name="userId" value="${currentUser.user_id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td width="80px">资讯类型:</td>
	            <td>
	            	<input disabled="disabled" id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'code',textField:'name',url:'${pageContext.request.contextPath}/admin/getAllNewsType.do'" />
	            </td>
	        </tr>
	        <tr>
	            <td style="width: 80px;">资讯标题:</td>
	            <td><input disabled="disabled" class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        
	        <tr>
	            <td>资讯视频播放总时长<font color=red>(时:分:秒)</font>:</td>
	            <td><input disabled="disabled" class="easyui-timespinner" type="text" name="playLength" data-options="required:true,min:'00:00',showSeconds:true" style="width: 280px;"></input></td>
	        </tr>
	        
	        <tr>
	            <td style="width: 80px;">资讯视频:</td>
	            <td>
	                <iframe id="nc" src=""   frameborder="1" width="1000"></iframe>
	            </td>
	        </tr>
	    </table>
	</form>
</div>


<div id="dlg2" class="easyui-dialog" style="width: 370px;height: 150px;padding: 10px 20px"
closed="true" buttons="#dlg2-buttons">
<form id="fm2" method="post">
	<table cellspacing="5px;">
		<tr>
			<td>金额：</td>
			<td><input type="text" id="amount" name="amount" class="easyui-validatebox"  /></td>
		</tr>
	</table>
</form>
</div>

<div id="dlg2-buttons">
<a href="javascript:saveUser2()" class="easyui-linkbutton" iconCls="icon-ok" >确定</a>
<a href="javascript:closeUserAddDialog2()" class="easyui-linkbutton" iconCls="icon-cancel" >关闭</a>
</div>

</body>
<script type="text/javascript">
var ifm= document.getElementById("nc");
ifm.height=document.documentElement.clientHeight;
</script>
</html>