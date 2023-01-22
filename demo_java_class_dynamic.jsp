<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="demo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int x=Integer.parseInt(request.getParameter("val1"));
int y=Integer.parseInt(request.getParameter("val2"));
demo_java_class d=new demo_java_class();
d.a=x;
d.b=y;
out.println(d.s(x,y));
out.println(d.s1(x,y));
%>
</body>
</html>
