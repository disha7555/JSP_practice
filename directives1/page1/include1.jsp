<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
name:<input type="text" name="a1"/>
surname:<input type="text" name="a2"/>
</form>
<%String a=request.getParameter("a1");
application.setAttribute("a1",a);
String b=request.getParameter("a2");
application.setAttribute("a2",b);%>
</body>
</html>