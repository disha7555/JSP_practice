<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="include_x3.jsp" method="get">
recent address:
<jsp:include page="include_x1.jsp">
<jsp:param value="p" name="a"/>
</jsp:include>
permanent address
<jsp:include page="include_x1.jsp">
<jsp:param value="r" name="a"/>
</jsp:include>
<input type="submit" value="submit"/>
</form>
</body>
</html>
