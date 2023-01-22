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
String[] values = request.getParameterValues("cb");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/demo";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
if (values!=null)
{
  for (int i=0;i<=values.length-1;i++) 
  {
String sql1="delete from user where firstname='"+values[i]+"'";
stmt.executeUpdate(sql1);
}
String sql2="select * from user";
ResultSet r=stmt.executeQuery(sql2);
%>
<table border="1px solid black">
<%
	while(r.next())
	{
		String s1=r.getString("firstname");
		String s2=r.getString("lastname");
		String s3=r.getString("address");
		String s4=r.getString("gender");
		String s5=r.getString("city");
		String s6=r.getString("hobby");
%>
<tr>
<td>
		<input type="checkbox" name="cb" value="<%=s1%>">
	</td>
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
		<%out.println(s4);
		out.println("<BR>");
		%>
	</td>
	<td>
		<%out.println(s5);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(s6);
		out.println("<BR>");
		 %>
	</td>
</tr>
<%}}%>
	</table>
	<input type="submit" value="delete">
</body>
</html>