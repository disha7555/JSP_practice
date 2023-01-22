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
String username_old=(String)session.getAttribute("username1");
String password_old=(String)session.getAttribute("password1");
String username_new1=request.getParameter("username_new");
String password_new1=request.getParameter("password_new");
session.setAttribute("username2",username_new1);
session.setAttribute("password2",password_new1);
String username_new=(String)session.getAttribute("username2");
String password_new=(String)session.getAttribute("password2");
//out.println(username_new);
//out.println(password_new);
//out.println(username_old);
//out.println(password_old);
if(!(password_old.equals(password_new)))

{
	session.setAttribute("error","invalid credencials");
	response.sendRedirect("user_login.jsp");
}
else
{
if(username_old.equals(username_new) &&  password_old.equals(password_new))
{
	response.sendRedirect("user_welcome.jsp");
}
else
{	
	response.sendRedirect("user_login.jsp");
}
}
%>
</body>
</html>