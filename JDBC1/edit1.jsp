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
	String sql="select * from user2";
	ResultSet r=stmt.executeQuery(sql);
%>
<table border="1px solid black">
<%
	while(r.next())
	{
		String s1=r.getString("id");
		String s2=r.getString("firstname");
		String s3=r.getString("lastname");
	
%>
<tr>
	<td>
		<%out.println(s1);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(s2);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(s3);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<a href="edit2.jsp?id=<%=s1%>&fn=<%=s2%>&ln=<%=s3%>">edit</a>
	</td>
</tr>
<%} %>
	</table>
<%
	stmt.close();
	conn.close();
	 %>
</body>
</html>