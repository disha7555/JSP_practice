<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="user_veri.jsp" method="get">
	user name:<input type="text" name="username_new" required>
	<br/><br/>
	password: <input type="text" name="password_new" required>
	<br/>
	<br/>
			 <input type="submit" value="submit"/>
</form>
</body>
</html>
<%
String s=(String)session.getAttribute("error");
if(s!=null)
{
	out.println(s);
	session.removeAttribute("error");
}
%>