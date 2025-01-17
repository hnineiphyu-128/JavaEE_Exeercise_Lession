<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>

<!-- CSS -->
<link href="common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- JS -->
<script type="text/javascript" src="common/js/jquery.min.js"></script>
<script type="text/javascript" src="common/js/bootstrap.min.js"></script>

</head>
<body>

	<jsp:include page="common/menu.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 ml-auto mr-auto">
			<h3>Add New Course</h3>
			<c:url value="/add-course" var="add"></c:url>
			<form action="${add}" method="post">
				<div class="mb-3">
					<label for="name" class="form-label">Course Name</label> 
					<input type="text" class="form-control" id="name" name="name" required="required">
				</div>
				<div class="mb-3">
					<label for="price" class="form-label">Price</label>
					<input type="number" class="form-control" id="price" name="price" required="required">
				</div>
				<div class="mb-3">
					<label for="level" class="form-label">Level</label>
					<select class="form-control" id="level" name="level" required="required">
						<option>Basic</option>
						<option>Intermediate</option>
						<option>Advance</option>
					</select>
				</div>
				<div class="mb-3">
					<label for="duration" class="form-label">Duration (Month)</label>
					<input type="number" class="form-control" id="duration" name="duration" required="required">
				</div>
				<div class="mb-3">
					<label for="startdate" class="form-label">Start Date</label>
					<input type="date" class="form-control" id="startdate" name="startdate" required="required">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			</div>
		</div>
	</div>

</body>
</html>