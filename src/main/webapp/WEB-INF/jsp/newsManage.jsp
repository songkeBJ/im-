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
	//初始化类目选择和图片上传器
	E3.init({fun:function(node){
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
//查看投诉详情
function newsComplain(){
	var selectedRows=$("#dg").datagrid('getSelections');
	if(selectedRows.length!=1){
		$.messager.alert('系统提示','请选择一条要查看的资讯！');
		return;
	}
	var row=selectedRows[0];
	$('#newsComplainDg').datagrid('load', {    
	    newsId: row.id   
	}); 
	$("#newsComplain").window("open");
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
//锁定资讯
	function lable(status){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert('系统提示','请选择一条要编辑的数据！');
			return;
		}
		var row=selectedRows[0];
		var msg="";
		if(status=="1"){
			msg ="您确认要置顶该条资讯吗";
		}else if(status=="2"){
			msg ="您确认要推荐该条资讯吗";
		}else{
			msg ="您确认取消该条资讯的标记吗";
		}
			
		$.messager.confirm("系统提示",msg,function(r){
			if(r){
				$.post("updateNewsLable.do",{id:row.id,lable:status},function(result){
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
		return "屏蔽";
	}else{
		return "正常";
	}
}
//格式化性别
function initLable(val,row){
	if(val=="0"){
		return "置顶";
	}else if(val=="1"){
		return "推荐";
	}else{
		return "";
	}
}
//格式化投诉类型
function initComplaine(val,row){
	if(val=="0"){
		return "广告";
	}else if(val=="1"){
		return "过时";
	}else if(val=="2"){
		return "重复";
	}else if(val=="3"){
		return "错别字";
	}else if(val=="4"){
		return "色情低俗";
	}else if(val=="5"){
		return "标题夸张";
	}else if(val=="6"){
		return "观点错误";
	}else if(val=="7"){
		return "与事实不符";
	}else{
		return "未知类型";
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
<table id="dg" title="资讯列表" class="easyui-datagrid" fitColumns="true" 
pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/newsList.do" fit="true" toolbar="#tb">
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
<div id="newsComplain" class="easyui-window" fit="true" title="资讯投诉详情"
closed="true" buttons="#dlg-buttons">
	<table id="newsComplainDg" title="资讯投诉详情" class="easyui-datagrid" fitColumns="true" 
	 rownumbers="true" url="${pageContext.request.contextPath}/admin/countByNewsIdAndType.do" fit="true" >
	<thead>
		<tr>
			<th field="cb" checkbox="true" align="center"></th>
			<th field="type" width="50" align="center" formatter="initComplaine">投诉类型</th>
			<th field="num" width="50" align="center" >投诉次数</th>
		</tr>
	</thead>
	</table>
</div>
<div id="tb">
	<div>
		<!-- <a href="javascript:addNews()" class="easyui-linkbutton" iconCls="icon-add" plain="true">发布资讯</a> -->
		<a href="javascript:lock(1)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">屏蔽</a>
		<a href="javascript:lock(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">解除屏蔽</a>
		<a href="javascript:lable(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">标记为置顶</a>
		<a href="javascript:lable(1)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">标记为推荐</a>
		<a href="javascript:lable(-1)" class="easyui-linkbutton" iconCls="icon-edit" plain="true">取消标记</a>
		<a href="javascript:editPass()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">查看</a>
		<a href="javascript:newsComplain()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">查看投诉详情</a>
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