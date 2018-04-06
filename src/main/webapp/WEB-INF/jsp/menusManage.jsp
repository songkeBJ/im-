<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var url;
	
	$(function(){
		$('#treeGrid').treegrid({
			url:'${pageContext.request.contextPath}/agentUser/menuList.do?parentId=-1',
			onLoadSuccess:function(){
				$("#treeGrid").treegrid('expandAll');
			}
		});
	});
	
	function formatIconCls(value,row,index){
		return "<div class="+value+">&nbsp;</div>";
	}
	//添加页面
	function openAuthAddDialog(){
		var node=$('#treeGrid').treegrid('getSelected');
		if(node==null){
			$.messager.alert('系统提示','请选择一个父菜单节点！');
			return;
		}
		$("#dlg").dialog("open").dialog("setTitle","添加菜单");
		url="saveMenu.do?parentId="+node.id;
	}
	//修改页面
	function openAuthModifyDialog(){
		var node=$('#treeGrid').treegrid('getSelected');
		if(node==null){
			$.messager.alert('系统提示','请选择一个要修改的菜单！');
			return;
		}
		$("#dlg").dialog("open").dialog("setTitle","修改菜单");
		$("#fm").form("load",node);
		$("#authName").val(node.text);
		url="saveMenu.do?authId="+node.id;
	}
	//删除
	function deleteAuth(){
		var node=$("#treeGrid").treegrid('getSelected');
		if(node==null){
			$.messager.alert('系统提示','请选择一个要删除的菜单节点！');
			return;
		}
		var parentNode=$("#treeGrid").treegrid('getParent',node.id);
		$.messager.confirm("系统提示","您确认要删除这个菜单节点吗?",function(r){
			if(r){
				$.post("deleteMenu.do",{authId:node.id,parentId:parentNode.id},function(result){
					if(result.success){
						$.messager.alert('系统提示',"您已成功删除这个菜单节点！");
						$("#treeGrid").treegrid("reload");
					}else{
						$.messager.alert('系统提示',result.errorMsg);
					}
				},"json");
			}
		});
	}
	//添加
	function saveAuth(){
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
					closeAuthDialog();
					$("#treeGrid").treegrid("reload");
				}
			}
		});
	}
	
	function closeAuthDialog(){
		$("#dlg").dialog("close");
		$("#fm").form('clear');
		$("#iconCls").val("icon-item");
	}
</script>
</head>
<body style="margin: 1px;">
<table id="treeGrid" title="菜单管理" class="easyui-treegrid" 
  toolbar="#tb" data-options="idField:'id',treeField:'text',fit:true,fitColumns:true,rownumbers:true">
    <thead>
    	<tr>
    		<th field="id" width="30" align="center">菜单编号</th>
    		<th field="text" width="80">菜单名称</th>
    		<th field="iconCls" width="35" align="center" formatter="formatIconCls" >图标</th>
    		<th field="authPath" width="100" align="center">链接地址</th>
    		<th field="authDescription" width="100" align="center">备注</th>
    	</tr>
    </thead>
</table>
<div id="tb">
	<div>
		<a href="javascript:openAuthAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
		<a href="javascript:openAuthModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
		<a href="javascript:deleteAuth()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
	</div>
</div>

<div id="dlg" class="easyui-dialog" style="width: 570px;height: 350px;padding: 10px 20px"
  closed="true" buttons="#dlg-buttons">
  <form id="fm" method="post">
  	<table cellspacing="5px;">
  		<tr>
  			<td>菜单名称：</td>
  			<td><input type="text" id="authName" name="authName" class="easyui-validatebox" required="true"/></td>
  			<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  			<td>菜单样式：</td>
  			<td><input type="text" id="iconCls" name="iconCls" value="icon-item" class="easyui-validatebox" required="true"/></td>
  		</tr>
  		<tr>
  			<td>链接路径：</td>
  			<td colspan="4"><input type="text" size="58" id="authPath" name="authPath" class="easyui-validatebox" /></td>
  		</tr>
  		<tr>
  			<td valign="top">备注：</td>
  			<td colspan="4">
  				<textarea rows="7" cols="50" name="authDescription" id="authDescription"></textarea>
  			</td>
  		</tr>
  	</table>
  </form>
</div>

<div id="dlg-buttons">
	<a href="javascript:saveAuth()" class="easyui-linkbutton" iconCls="icon-ok" >保存</a>
	<a href="javascript:closeAuthDialog()" class="easyui-linkbutton" iconCls="icon-cancel" >关闭</a>
</div>
<input type="hidden" id="typesession" value="${type}">
</body>
</html>