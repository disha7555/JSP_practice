 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Length:
<c:set var="str1" value="my page"></c:set>
<c:set var="l1" value="${f:length(str1)}"></c:set>
<c:out value="${l1}"/>
</br>
lowercase:
<c:set var="l2" value="${f:toLowerCase(str1)}"></c:set>
<c:out value="${l2}"/>
</br>
uppercase:
<c:set var="l3" value="${f:toUpperCase(str1)}"></c:set>
<c:out value="${l3}"/>
</br>
trim:
<c:set var="str2" value="      my page "></c:set>
<c:set var="l4" value="${f:trim(str2)}"></c:set>
<c:out value="${l4}"/>
</br>
Contains:
<c:set var="str3" value="my page"></c:set>
<c:set var="l5" value="${f:contains(str3,'my')}"></c:set>
<c:out value="${l5}"/>
<br>
second case:
<c:set var="str3" value="my page"></c:set>
<c:if var="l5" test="${f:contains(str3,'my')}">Hi</c:if>
</br>
ContainsIgnoreCase:
<c:set var="str3" value="my page"></c:set>
<c:set var="l5" value="${f:containsIgnoreCase(str3,'My')}"></c:set>
<c:out value="${l5}"/>
<br>
Ends with:
<c:set var="str3" value="my page"></c:set>
<c:set var="l6" value="${f:endsWith(str3,'my')}"></c:set>
<c:out value="${l6}"/>
<br>
<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
  
<p>With escapeXml() Function:</p>  
<p>string-1 : ${f:escapeXml(string1)}</p>  
<p>string-2 : ${f:escapeXml(string2)}</p>  
  
<p>Without escapeXml() Function:</p>  
<p>string-1 : ${string1}</p>  
<p>string-2 : ${string2}</p>
indexOf:
<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
  
<p>Index-1 : ${f:indexOf(string1, "first")}</p>  
<p>Index-2 : ${f:indexOf(string2, "second")}</p>  
</body>
</html>                    