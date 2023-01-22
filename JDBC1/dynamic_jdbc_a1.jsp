<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="dynamic_jdbc_a2.jsp" method="post">
	First name:<input type="text" name="fn"/>
	<br/>
	Last name:<input type="text" name="ln"/>
	<br/>
	<textarea name="ad" rows="4" cols="6">Address</textarea>
	<br/>
	Gender:
	<input type="radio" value="female" name="gender" id="f"/>
	<label for="f">Female:</label>
	<input type="radio" value="male" name="gender" id="m"/>
	<label for="m">Male:</label>
	<br/>
	city:
	<select name="city">
	<option>Ahmedabad</option>
	<option>Baroda</option>
	<option>Anand</option>
	</select>
	<br/>
	Hobies:
	<input type="checkbox" value="dancing" name="hob" id="d"/>
	<label for="d">Dancing</label>
	<input type="checkbox" value="singing" name="hob" id="s"/>
	<label for="s">Singing</label>
	<input type="checkbox" value="swimming" name="hob" id="sw"/>
	<label for="sw">Swimming</label>
	
	<br/>
	<input type="submit" value="submit"/>
</form>
</body>
</html>