<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h3>Expression Language Demo</h3>
	<%-- <label>1+2 = ${1+2}</label> --%>
	
	
	<form action="" method="">
		<label for="username"> Username &nbsp;&nbsp;</label>
		<input type="text" name="username" id="username" value="${param.username }" > <br><br>
		<label for="email"> Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="email" name="email" id="email" value="${param.email }" > <br><br>
		<label for="address"> Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="text" name="address" id="address" value="${param.address }" > <br><br>
		
		<button type="submit"> Display </button>
	</form> 
	<hr>
	
	<h3> The Result </h3>
	
	<c:if test="${(not empty param.username) && (param.email != null) AND (param.adderss ne null) }">
		Username = ${param.username } <br>
		Email    = ${param.email } <br>
		Address  = ${param.address } <br>
	</c:if>
	
	
	
	
	
</body>
</html>