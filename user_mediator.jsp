<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username_old1=request.getParameter("username_old");
String password_old1=request.getParameter("password_old");
//out.println(username_old1);
//out.println(password_old1);
session.setAttribute("username1",username_old1);
session.setAttribute("password1",password_old1);
response.sendRedirect("user_login.jsp");
%>
</body>
</html>