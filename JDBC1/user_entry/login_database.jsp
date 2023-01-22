<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String op=request.getParameter("pdd1");
session.setAttribute("oldp1",op);
String ou=request.getParameter("unn1");
session.setAttribute("oldu1",ou);

String pdd1=request.getParameter("pdd1");
String unn1=request.getParameter("unn1");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/demo";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql="select * from stud where username='"+unn1+"'";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
String s1=rs.getString("password");
if(pdd1.equals(s1))
{
	response.sendRedirect("welcome.jsp");
}
else
{
	response.sendRedirect("login.jsp");
}
}
%>
</body>
</html>