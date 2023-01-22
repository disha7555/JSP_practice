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
	//request.setAttribute("a","abc");
    session.setAttribute("b","abcd");
    session.setAttribute("d",123);
    //application.setAttribute("c","1");
    
%>
go to:<a href="session_application2.jsp">session_application2.jsp </a>
</body>
</html>