<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>实名认证审核</title>
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
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<script type="text/javascript">

var url;
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
	$.post("/im/admin/addNews.do",$("#itemAddForm").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示','发布资讯成功!');
		}else{
			$.messager.alert('提示','发布资讯失败,请与管理员联系!');
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

//搜索用户
function searchUser(){
	$('#dg').datagrid('load',{
		pass:$("#pass").combobox("getValue")
	});
}
//添加用户页面
function openUserAddDialog(){
	$("#dlg").dialog("open").dialog("setTitle","添加用户信息");
	$("#userName").removeAttr("readonly");
	url="saveUser.do";
}
//修改用户页面
function editPass(){
	var selectedRows=$("#dg").datagrid('getSelections');
	if(selectedRows.length!=1){
		$.messager.alert('系统提示','请选择一条要查看的实名认证申请！');
		return;
	}
	var row=selectedRows[0];
	$("#dlg").dialog("open").dialog("setTitle","查看实名认证申请详情");
	$("#fm").form("load",row);
	//先把上次浏览的图片删除
	$("#ttimg").html("");
	//加载标题图片
	if(row.images){
		json = eval(row.images);
		//imgs = row.images.split(",");
		for(var i in json){
			if($.trim(json[i]).length > 0){
				$("#ttimg").append("<li style='margin-right:10px; padding:5px;'><a href='"+json[i]+"' target='_blank'><img src='"+json[i]+"' width='450' height='260' /></a></li>");
			}
		}
	}
	//加载资讯正文
	if(row.content){
	$("#nc").attr('src',"${pageContext.request.contextPath}/admin/html.do?id="+row.id); 
	}
	//url="updatePw.do?id="+row.id;
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
	$('#win').window('open');
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
		msg ="您确认要通过这条申请吗?";
	}else{
		msg ="您确认要拒绝这条申请吗?";
	}
		
	$.post("updateCertification.do",{id:row.id,pass:status},function(result){
		if(result.success){
			$.messager.alert('系统提示',"操作成功");
			$("#dg").datagrid("reload");
		}else{
			$.messager.alert('系统提示',result.msg);
		}
	},"json");
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
//格式化性别
function initSex(val,row){
	if(val=="0"){
		return "男";
	}
	if(val=="1"){
		return "女";
	}
}
//格式化类型
function initType(val,row){
	if(val=="0"){
		return "视频";
	}
	if(val=="1"){
		return "娱乐";
	}
	if(val=="2"){
		return "科技";
	}
	if(val=="3"){
		return "汽车";
	}
	if(val=="4"){
		return "体育";
	}
	if(val=="5"){
		return "机械";
	}
}
//格式化性别
function initStatus(val,row){
	if(val=="0"){
		return "未审核";
	}else if(val=="1"){
		return "<font color='blue'>通过</font>";
	}else{
		return "<font color='red'>未通过</font>";
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
</head>
<body style="margin: 1px;">
<div id="win" class="easyui-window" title="发布资讯" fit="true"  closed="true" 
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm" class="itemForm" method="post">
	                 <input type="hidden" name="pcUserId" value="${currentUser.id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td>资讯类型:</td>
	            <td>
	            	<input id="cc" class="easyui-combobox" name="type"   
	   				 data-options="valueField:'id',textField:'text',url:'${pageContext.request.contextPath}/type.json'" />
	            </td>
	        </tr>
	        <tr>
	            <td>资讯标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
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
	                <textarea style="width:800px;height:300px;visibility:hidden;" name="content"></textarea>
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
<table id="dg" title="实名认证申请列表" class="easyui-datagrid" fitColumns="true" 
pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/certificationList.do" fit="true" toolbar="#tb">
<thead>
	<tr>
		<th field="cb" checkbox="true" align="center"></th>
		<th field="id" width="50" align="center">实名认证申请编号</th>
		<th field="user_id" width="50" align="center" >申请人id</th>
		<th field="nickname" width="50" align="center">申请人昵称</th>
		<th field="user_realname" width="50" align="center">申请人真实姓名</th>
		<th field="user_code" width="50" align="center" >申请人身份证号</th>
		<th field="createdTime" width="50" align="center" >申请时间</th>
		<th field="lastModifierName" width="50" align="center" >审核人姓名</th>
		<th field="lastModifiedTime" width="50" align="center" >审核时间</th>
		<th field="pass" width="50" align="center" formatter="initStatus">审核状态</th>
	</tr>
</thead>
</table>
<div id="tb">
<div>
	<!-- <a href="javascript:addNews()" class="easyui-linkbutton" iconCls="icon-add" plain="true">发布资讯</a> -->
	<a href="javascript:lock(1)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">标记审核通过</a>
	<a href="javascript:lock(2)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">标记审核不通过</a>
	<a href="javascript:editPass()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">查看身份证正反面</a>
</div>
 <div>
		&nbsp;审核状态：&nbsp;<input class="easyui-combobox" id="pass" name="pass" size="20" data-options="editable:false,panelHeight:'auto',valueField:'id',textField:'text',url:'${pageContext.request.contextPath}/certification.json'"/>
		<a href="javascript:searchUser()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
	</div>
</div>

<div id="dlg" class="easyui-dialog" fit="true"
closed="true" buttons="#dlg-buttons">
<form id="fm" method="post">
	             <input type="hidden" name="pcUserId" value="${currentUser.id }"/>
	    <table cellpadding="5">
	        <tr>
	            <td>姓名:</td>
	            <td><input disabled="disabled" class="easyui-textbox" type="text" name="user_realname" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>身份证号:</td>
	            <td><input disabled="disabled" class="easyui-textbox" type="text" name="user_code" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>身份证正反面照片:</td>
	            <td id="ttimg">
	            </td>
	        </tr>
	    </table>
	</form>
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