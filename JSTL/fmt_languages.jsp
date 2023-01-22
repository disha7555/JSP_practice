<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt" %>

<f:setLocale value="${param.f }" />
<f:setBundle basename="m" var="i" />

<f:message bundle="${i }" key="ftitle"></f:message><input type="text">
<f:message bundle="${i }" key="ltitle"></f:message><input type="text">

select language :-

<a href="fmt_languages.jsp?f=en_us">English</a>
<a href="fmt_languages.jsp?f=hi">Hindi</a>
<a href="fmt_languages.jsp?f=gu">Gujarati</a>

</body>
</html>

