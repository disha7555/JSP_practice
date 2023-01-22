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
String oldp=request.getParameter("ooo");
String newp=request.getParameter("nnn");
String newcp=request.getParameter("nnnc");
if(newcp.equals(newp))
{
String a=(String)session.getAttribute("oldp1");
String b=(String)session.getAttribute("oldu1");
if(a.equals(oldp))
{
	Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/demo";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="update stud set password='"+newp+"' where username='"+b+"'";
	int row=stmt.executeUpdate(sql);
	out.println(row);
	out.println("your password changed");
	stmt.close();
	conn.close();	
}
}
%>
</body>
</html>