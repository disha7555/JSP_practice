<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@taglib prefix="s" uri="http://java.sun.com/jstl/sql_rt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<s:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/demo" user="root" password="root"/>
<s:update dataSource="${db}">
update hello set name="misha" where id="6";
</s:update> 
<s:query dataSource="${db}" var="i1">
select * from hello;
</s:query>
<table border="2">  
<tr>  
<th>ID</th>  
<th>Name</th>   
</tr>  
<c:forEach var="table" items="${i1.rows}">  
<tr>  
<td><c:out value="${table.id}"/></td>  
<td><c:out value="${table.name}"/></td>   
</tr>  
</c:forEach>  
</table>  
 
</body>
</html>