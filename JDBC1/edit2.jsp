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
String s1=request.getParameter("id");
String s2=request.getParameter("fn");
String s3=request.getParameter("ln");
session.setAttribute("idd",s1);
%>
<form action="edit3.jsp" method="post">
first name:<input type="text" placeholder=<%=s2%> name="v1">
last name:<input type="text" placeholder=<%=s3%> name="v2">
<input type="submit" value="submit"/>
</form>
</body>
</html>