<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资讯发布费用设置</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script language="javascript"> 
//全局变量，代表文件域的个数，并用该变量区分文件域的name属性 
var file_count = 0; 
//增加文件 域 
function additem(id) { 
if (file_count > 9) { 
alert("最u22810 10个u25991 件u22495 "); 
return; 
} 
//定义行变量row；单元格变量cell；单元格内容变量str。 
var row,cell,str; 
//在指定id的table中插入一行 
row = eval("document.all["+'"'+id+'"'+"]").insertRow(); 
if(row != null ) { 
//在行中插入单元格 
cell = row.insertCell(); 
//设置str的值，包括一个文件域和一个删除按钮 
str='<td>大于等于<input class="easyui-numberbox" type="easyui-numberbox" name="title" data-options="required:true,min:0" style="width: 40px;"></input>小于<input class="easyui-numberbox" type="easyui-numberbox" name="title" data-options="required:true,min:0" style="width: 40px;"></input>篇的每篇<input class="easyui-numberbox" type="easyui-numberbox" name="title" data-options="required:true,min:0,precision:2" style="width: 40px;"></input>元</td>'; 
str += " <input type="+'"'+"button"+'"'+" value="+'"'+"删除"+'"'+" onclick='deleteitem(this,"+'"'+"tb"+'"'+");'>"; 
//文件域个数增加 
file_count++; 
//设置单元格的innerHTML为str的内容 
cell.innerHTML=str; 
$.parser.parse();
} 
} 
//删除文件域 
function deleteitem(obj,id) { 
var rowNum,curRow; 
curRow = obj.parentNode.parentNode; 
rowNum = eval("document.all."+id).rows.length - 1; 
eval("document.all["+'"'+id+'"'+"]").deleteRow(curRow.rowIndex); 
file_count--; 
} 
//提交表单
function submitForm(){
	//有效性验证
	if(!$('#itemAddForm').form('validate')){
		$.messager.alert('提示','表单还未填写完成!');
		return ;
	}
	$.post("/im/admin/updateNewsMoneySet.do",$("#itemAddForm").serialize(), function(data){
		if(data.code == 0){
			$.messager.alert('提示','修改成功!');
		}else{
			$.messager.alert('提示',data.msg);
		}
	});
}

function clearForm(){
	$('#itemAddForm').form('reset');
}
$(function(){
	$.get("/im/admin/getNewsMoneySet.do", function(data){
			for(i=0;i<data.count;i++){
				$("#add").click();
			}
			all=data.count*3+2;
			for(i=0;i<all;i++){
			$('.easyui-numberbox:eq('+i+')').numberbox('setValue', data.nums[i]);
			}
		});
})
</script> 
</head>
<body style="margin: 1px;">
<div id="win" class="easyui-window" title="资讯发布费用设置" fit="true"   
        data-options="iconCls:'icon-save',modal:true"> 
        <div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm" class="itemForm" method="post">
	     <input type="hidden" name="pcUserId" value="${currentUser.id }"/>
	    <table cellpadding="5" id="tb">
	        <tr>
	            <td>少于<input class="easyui-numberbox" type="easyui-numberbox" name="title" data-options="required:true,min:0" style="width: 40px;"></input>篇的每篇<input class="easyui-numberbox" type="easyui-numberbox" name="title" data-options="required:true,min:0,precision:2" style="width: 40px;"></input>元
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	    <a id="add" href="javascript:void(0)" class="easyui-linkbutton" onclick='additem("tb")'>添加价格阶梯</a>
	</div>
	
</div>  
</div>  


</body>
</html>