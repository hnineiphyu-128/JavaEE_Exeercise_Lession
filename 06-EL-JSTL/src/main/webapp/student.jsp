<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Students</title>

<!-- CSS -->
<link href="common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- JS -->
<script type="text/javascript" src="common/js/jquery.min.js"></script>
<script type="text/javascript" src="common/js/bootstrap.min.js"></script>

</head>
<body>

	<!-- Menu -->
	<jsp:include page="common/menu.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
			<div class="col">
				<h3 class="d-inline-block my-3">All Students</h3>
				<c:url value="/add-student " var="add"></c:url>
				<a href="${add}" class="btn btn-outline-primary float-right my-3"> Add New</a>
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th>#</th>
							<th>Name</th>
							<th>Email</th>
							<th>Age</th>
							<th>Year</th>
							<th>Address</th>
							<th>Date of Birth</th>
						</tr>
					</thead>
					<tbody>
						<% int i=1; %>
						<c:forEach items="${studentlist}" var="student">
							<tr>
								<td><%= i++ %></td>
								<td>
									<img alt="Student Profile" src="/06-EL-JSTL/studentImg/${student.profile}" width="100" height="50">
									${student.name}
								</td>
								<td>${student.email}</td>
								<td>${student.age}</td>
								<td>${student.year}</td>
								<td>${student.address}</td>
								<td>${student.dateofbirth}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>