<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body>
<jsp:include page="common/menu.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 ml-auto mr-auto">
			<h3>Add New Student</h3>
			<c:url value="/add-student" var="add"></c:url>
			<form action="${add}" method="post" enctype="multipart/form-data">
				<div class="mb-3">
					<label for="name" class="form-label">Student Name</label> 
					<input type="text" class="form-control" id="name" name="name" required="required">
				</div>
				<div class="mb-3">
					<label for="profile" class="form-label">Student Profile</label> 
					<input type="file" class="form-control-file" id="profile" name="profile" required="required">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email</label>
					<input type="email" class="form-control" id="email" name="email" required="required">
				</div>
				<div class="mb-3">
					<label for="age" class="form-label">Student's Age</label>
					<input type="number" class="form-control" id="age" name="age" required="required">
				</div>
				<div class="mb-3">
					<label for="year" class="form-label">year</label>
					<select class="form-control" id="year" name="year" required="required">
						<option>First Year</option>
						<option>Second Year</option>
						<option>Third Year</option>
						<option>Fourth Year</option>
						<option>Fifth Year</option>
					</select>
				</div>
				<div class="mb-3">
					<label for="address" class="form-label">Student Address</label> 
					<input type="text" class="form-control" id="address" name="address" required="required">
				</div>
				<div class="mb-3">
					<label for="dob" class="form-label">Date of Birth</label>
					<input type="date" class="form-control" id="dob" name="dob" required="required">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			</div>
		</div>
	</div>

</body>
</html>