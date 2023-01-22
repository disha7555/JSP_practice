<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${sessionScope.i}
${param.fn}
<c:set var="i3" value="${param.ln}"></c:set>
${i3}
<c:set var="cb" value="${paramValues.cb}"></c:set>
<c:forEach var="c" items="${cb}">${c}</c:forEach>
<c:remove var="i" scope="session"></c:remove>
${param.i}
</body>
</html>