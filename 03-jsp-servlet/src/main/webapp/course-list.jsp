<%@page import="com.mmit.course.model.Course"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Lists</title>
<jsp:include page="resources/common.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<h3>Course Lists</h3>
		<table border="1" class="table table-dark" cellpadding="9" cellspacing="0">
			<thead>
				<tr>
					<th> Name </th>
					<th> Level </th>
					<th> Fees </th>
				</tr>
			</thead>
			<tbody>
			<%
				List<Course> list = (ArrayList<Course>)session.getAttribute("courses");
				for(Course c:list){
				
			%>
				<tr>
					<td> <%= c.getName() %> </td>
					<td> <%= c.getLevel() %> </td>
					<td> <%= c.getFees() %> </td>
				</tr>
			<%	
				}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>