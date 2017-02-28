<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    	<!-- 
  		filter:alpha(opacity=50); -moz-opacity:0.5; -khtml-opacity: 0.5; opacity: 0.5; 
  		是背景图片半透明
  	-->
  	
  	<!-- z-index:表示层叠顺序，数字越大越在前 -->
  
    <div style="position:absolute; width:100%; height:100%; z-index: -1">
		<img style="filter:alpha(opacity=50); -moz-opacity:0.5; -khtml-opacity: 0.5; opacity: 0.5;" width="100%" height="100%" src="images/bg.gif">
	</div>	
	
	<div style="position: absolute;z-index: 2;top: 70%;left: 80%">
		<img width="150px" src="images/start.png" onclick="window.location.href='play.html'">
	</div>
  </body>
</html>
