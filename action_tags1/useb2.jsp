<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean class="useb.useb1" id="abc">
	<jsp:setProperty property="fn" name="abc" value="x"/>
	<jsp:setProperty property="ln" name="abc" value="y"/>
	<jsp:getProperty property="fn" name="abc"/>
	<jsp:getProperty property="ln" name="abc"/>
</jsp:useBean>

</body>
</html>
