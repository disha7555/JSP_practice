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
int i;
int n=6;
for(i=1;i<=n;i++)
{
%>
<table border=2 height="50" width="70">
<%
if(i%2==0)
{
%>	
		<tr bgcolor="red">
			<td>0</td>
		</tr>
<%
}
%>
<% 	
if(i%2!=0)
{
%>	
		<tr bgcolor="blue">
			<td>1</td>
		</tr>
<%
}
%>	
</table>
<%}%>
</body>
</html>