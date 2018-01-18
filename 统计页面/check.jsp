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
String name=null;
name=request.getParameter("username");
if(name!=null)
  session.setAttribute("username",name);
else{
  name=(String)session.getAttribute("username"); //曾经有过会话
  if(name==null){
    response.sendRedirect(response.encodeRedirectURL("log.jsp"));    
  }
}
%>

<a href="<%=response.encodeURL("log.jsp")%>">登录</a>&nbsp;&nbsp;&nbsp;
<a href="<%=response.encodeURL("logout.jsp")%>">注销</a>&nbsp;&nbsp;&nbsp;
<p>当前用户为：<%=name%> </P>
<P>你的信箱中有100封邮件</P>

<hr>
<% 
Integer counter=(Integer)application.getAttribute("counter");
if(counter!=null){
%>

当前在线人数为：<%=counter %> <br>
<% } %>
</body>
</html>