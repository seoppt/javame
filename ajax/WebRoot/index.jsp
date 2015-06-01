<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jqeury ajax第3课 使用ajax提交form表单</title>
<style type="text/css">
#result{width:600px;height:200px;margin-top:60px;background-color:#0CF;padding:5px;}
</style>
<script type="text/javascript" src="jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	function ajaxGet(){
		$.get("get_handle.jsp",function(data){
			$("#result").html(data);
		},"text");
	}
	
	function ajaxPost(){
		$.post("post_handle.jsp",{name:'张三',age:28},function(data){
			$("#result").html(data.result);
		},"json");
	}
</script>
</head>
<body>
<input type="button" value="AjaxGet测试" onclick="ajaxGet()" />
<input type="button" value="AjaxPost测试" onclick="ajaxPost()" />
<div id="result"></div>
<body>
</body>
</html>
