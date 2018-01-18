<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String name=(String)session.getAttribute("username");
session.invalidate(); 
%>
<%=name%>,再见！
<p>
<p>
<a href="<%=response.encodeURL("log.jsp")%>">重新登录邮件系统</a>
</body>
</html>