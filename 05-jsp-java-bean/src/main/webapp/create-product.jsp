<%@page import="com.mmit.jpit.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
	<jsp:useBean id="product" class="com.mmit.jpit.Product" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="product"/>
	<jsp:forward page="/add-product"></jsp:forward>
	
</body>
</html>