<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2> Hello </h2>
	<input value="MMIT"> <br>
	<a href="index.html"> Go To Home </a>
	
	<% out.print("Current Date: "+ LocalDate.now()); %>
</body>
</html>