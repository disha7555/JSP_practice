<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="demo.demo_java_class"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
demo_java_class a1=new demo_java_class();
	a1.a=10;
	a1.b=20;
	out.println("result for s1:"+a1.s1(a1.a,a1.b));
	out.println(a1.s(a1.a,a1.b));
%>

</body>
</html>
