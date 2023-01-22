<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="login_database.jsp" method="post">
User name:<input type="text" name="unn1">
Password:<input type="text" name="pdd1">
<input type="submit" value="login">
<button value="not registered yet" height = "3px" width = "7px" onclick="document.forms[0].action = 'registration.jsp'; return true;">
not regi. yet
</button>
<a href="registration.jsp">
<input type="button" value="reg">
</a>
hi
<button>hi<a href="registration.jsp"></button>
</form>

</body>
</html>