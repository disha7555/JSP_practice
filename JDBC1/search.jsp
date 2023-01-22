<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/demo";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="select * from user";
	ResultSet r=stmt.executeQuery(sql);
	while(r.next())
	{
		String s1=r.getString("firstname");
		out.println(s1);
		out.println("<BR>");
		String s2=r.getString("lastname");
		out.println(s2);
		out.println("<BR>");
		String s3=r.getString("address");
		out.println(s3);
		out.println("<BR>");
		String s4=r.getString("gender");
		out.println(s4);
		out.println("<BR>");
		String s5=r.getString("city");
		out.println(s5);
		out.println("<BR>");
		String s6=r.getString("hobby");
		out.println(s6);
		out.println("<BR>");
	}
	//out.println("done");
	stmt.close();
	conn.close();
%>
</body>
</html>