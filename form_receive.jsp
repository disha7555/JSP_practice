<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String f=request.getParameter("fn");
out.println("first name:"+f);
%>
<br/>
<%String l=request.getParameter("ln");
 out.println("last name:"+l);
 %>
<br/>
<%String add=request.getParameter("ad");
 out.println("address:"+add);
 %>
<br/>
<%
String gen=request.getParameter("gender");
 out.println("gender:"+gen);
 %>
<br/>
<%String city=request.getParameter("city");
out.println("city:"+city);
%>
<br/>
<%
out.println("Your hobbies:");
%>
<br/>
<% 
String str[]=request.getParameterValues("hob");
if(str!=null)
{
for(int i=0;i<str.length;i++)
{
	out.println(str[i]);
%>
<br/>
<% 
}
}
else
{	out.println("Nothing to show,"+"<br>");
	out.println("you have not chosen any hobby");
}
%>
</body>
</html>