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
String a=request.getParameter("a");
String b=request.getParameter("b");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/demo";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql="insert into hello values('"+a+"','"+b+"')";
int row=stmt.executeUpdate(sql);
out.println(row);
out.println("rows inserted");
stmt.close();
conn.close();
%>
</body>
</html>