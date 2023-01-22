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
set and out:
<c:set var="i" value="5">
</c:set>
<c:out value="${i}"></c:out>
Each loop:
<c:forEach begin="1" end="5" var="s">
${s}
</c:forEach>
if conditon:
<c:if test="${i ne 6}">
<c:out value="${i}">
</c:out>
</c:if>
Choose :
<c:choose>
<c:when test="${i eq 6}">
${"hello"}
</c:when>
<c:when test="${i eq 4}">
${"hi"}
</c:when>
<c:otherwise>
${"its ok"}
</c:otherwise>
</c:choose>
import:
<c:import var = "data" url = "https://www.google.com"/>

</body>
</html>