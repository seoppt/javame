<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String name = request.getParameter("name");
	String age = request.getParameter("age");

	PrintWriter writer = response.getWriter();
	writer.write("{\"result\":\"您好 " + name + ",您的年龄是" + age+ "岁\"}");
	writer.close();
%>