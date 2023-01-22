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
String s=(String)session.getAttribute("idd");
String t1=request.getParameter("v1");
String t2=request.getParameter("v2");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/demo";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql1="update user2 set firstname='"+t1+"' where id='"+s+"'";
stmt.executeUpdate(sql1);
String sql2="update user2 set lastname='"+t2+"' where id='"+s+"'";
stmt.executeUpdate(sql2);
String sql3="select * from user2";
ResultSet r=stmt.executeQuery(sql3);
%>
<table border="1px solid black">
<%
	while(r.next())
	{
		String s2=r.getString("firstname");
		String s3=r.getString("lastname");
		String s1=r.getString("id");
		//String s4=r.getString("gender");
		//String s5=r.getString("city");
		//String s6=r.getString("hobby");
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