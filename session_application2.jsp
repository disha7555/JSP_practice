<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--=request.getAttribute("a")--%>
<%=session.getAttribute("b")%>
<%--=application.getAttribute("c")--%>
<%int a=(Integer)session.getAttribute("d");
out.println(a);
%>
 </body>
 go to:<a href="session_application3.jsp">session_application3.jsp </a>
</html>