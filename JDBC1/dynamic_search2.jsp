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
	String fn=request.getParameter("f");
	Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/demo";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="select * from user where firstname='"+fn+"'";
	ResultSet r=stmt.executeQuery(sql);
	while(r.next())
	{
		String s1=r.getString("firstname");
		
		out.println("first name: "+s1);
		out.println("<BR>");
		String s2=r.getString("lastname");
		out.println("last name: "+s2);
		out.println("<BR>");
		String s3=r.getString("address");
		out.println("address: "+s3);
		out.println("<BR>");
		String s4=r.getString("gender");
		out.println("gender: "+s4);
		out.println("<BR>");
		String s5=r.getString("city");
		out.println("city: "+s5);
		out.println("<BR>");
		String s6=r.getString("hobby");
		out.println("hobby: "+s6);
		out.println("<BR>");
	}
	//out.println("done");
	stmt.close();
	conn.close();

%>
</body>
</html>