<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>充值管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$.post("${pageContext.request.contextPath}/admin/getAllUserPay.do",{id:1},function(result){
	$("#allPay").val(result.allPay);
},"json");
</script>
<script type="text/javascript">
	var url;
	
	$(function(){
		$("#dg2").datagrid({
			onDblClickRow:function(rowIndex,rowData){
				chooseRole();
			}
		});
	})
	//搜索用户
	function searchUser(){
		$('#dg').datagrid('load',{
			phoneNumber:$("#phoneNumber").val(),
			userName:$("#userName").val(),
			orderId:$("#orderId").val(),
		});
	}
	//转换状态
	function invtieStatus(val,row){
		return "余额充值";
	}
	
	
	

	function closeUserAddDialog(){
		$("#dlg").dialog("close");
		$("#fm").form('clear');
	}
	
	//导出题库  
	function toDownLoadExcel(){  
	      location.href ="${pageContext.request.contextPath}/admin/exportRecharge.do";  
	}   
	
</script>
</head>
<body style="margin: 1px;">
<table id="dg" title="充值记录管理" class="easyui-datagrid" fitColumns="true" 
    pagination="true" rownumbers="true" url="${pageContext.request.contextPath}/admin/rechargeRecordList.do" fit="true" toolbar="#tb">
    <thead>
    	<tr>
    		<th field="cb" checkbox="true" align="center"></th>
    		<th field="orderId" width="100" align="center">订单号</th>
    		<th field="amount" width="100" align="center">订单金额</th>
    		<th field="active" width="100" align="center" formatter="invtieStatus">支付订单行为</th>
    		<th field="userName" width="100" align="center" >用户</th>
    		<th field="phoneNumber" width="100" align="center" >用户手机号码</th>
    		<th field="createdTime" width="300" align="center" >创建时间</th>
    	</tr>
    </thead>
</table>
<div id="tb">
<div>
		&nbsp;会员总充值金额：&nbsp;<input type="text" name="allPay" id="allPay" size="20" readonly />元
	</div>
	<div>
		&nbsp;订单号：&nbsp;<input type="text" name="orderId" id="orderId" size="20" onkeydown="if(event.keyCode==13) searchUser()"/>
		&nbsp;用户：&nbsp;<input type="text" name="userName" id="userName" size="20" onkeydown="if(event.keyCode==13) searchUser()"/>
		&nbsp;手机号码：&nbsp;<input type="text" name="phoneNumber" id="phoneNumber" size="20" onkeydown="if(event.keyCode==13) searchUser()"/>
		<a href="javascript:searchUser()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
		<a href="javascript:void(0);" onclick="toDownLoadExcel();" class="easyui-linkbutton" style="float:right">导出EXCEL</a>  
	</div>
</div>

<div id="dlg" class="easyui-dialog" style="width: 370px;height: 150px;padding: 10px 20px"
  closed="true" buttons="#dlg-buttons">
  <form id="fm" method="post">
  	<table cellspacing="5px;">
  		<tr>
  			<td>金额：</td>
  			<td><input type="text" id="amount" name="amount" class="easyui-validatebox"  /></td>
  		</tr>
  	</table>
  </form>
</div>

<div id="dlg-buttons">
	<a href="javascript:saveUser()" class="easyui-linkbutton" iconCls="icon-ok" >确定</a>
	<a href="javascript:closeUserAddDialog()" class="easyui-linkbutton" iconCls="icon-cancel" >关闭</a>
</div>

</body>
</html>