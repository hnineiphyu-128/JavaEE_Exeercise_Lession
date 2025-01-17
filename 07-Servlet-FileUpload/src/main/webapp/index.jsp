<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Upload</title>

<!-- CSS -->
<link href="common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- JS -->
<script type="text/javascript" src="common/js/jquery.min.js"></script>
<script type="text/javascript" src="common/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">
	<div class="row">
		<div class="col-md-6 my-4">
			<h3>SFile Upload</h3>
			<c:url value="/register" var="action"></c:url>
			<form action="${action}" method="post" enctype="multipart/form-data">
				<div class="mb-3">
					<label for="name" class="form-label">Name</label> 
					<input type="text" class="form-control" id="name" name="name" required="required">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email</label>
					<input type="email" class="form-control" id="email" name="email" required="required">
				</div>
				<div class="mb-3">
					<label for="photo" class="form-label">photo</label>
					<input type="file" class="form-control-file" id="photo" name="photo">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>		
		</div>
	</div>
	</div>
</body>
</html>