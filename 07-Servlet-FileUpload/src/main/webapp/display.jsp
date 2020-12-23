<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Info</title>

<!-- CSS -->
<link href="common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- JS -->
<script type="text/javascript" src="common/js/jquery.min.js"></script>
<script type="text/javascript" src="common/js/bootstrap.min.js"></script>

</head>
<body>
	
	<div class="container">
		<div class="row">
			<div class="col">
				<h3 class="d-inline-block my-3">User Information</h3>
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th>#</th>
							<th>Name</th>
							<th>Email</th>
							<th>Profile</th>
						</tr>
					</thead>
					<tbody>
							<tr>
								<td>${userinfo.name}</td>
								<td>${userinfo.email}</td>
								<td>
									<img alt="profile" src="/07-Servlet-FileUpload/imgUploads/${userinfo.photo}" class="img-fluid">
								</td>
							</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>