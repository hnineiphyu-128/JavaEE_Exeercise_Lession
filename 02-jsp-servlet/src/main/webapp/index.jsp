<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="common/js/jquery.min.js"></script>
<script type="text/javascript" src="common/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container mt-4">
		<div class="card">
			<h5 class="card-header">Student Registration</h5>
			<div class="card-body">
				<form action="register" method="get">
					<div class="container row ">
						<div class="col-md-10 ml-auto">
							<!-- <h2 class="text-center text-danger my-4"> Student Registration Form </h2>
							<hr> -->
							<div class="row form-group">
								<div class="col-md-4 col-6 text-center">
									<label for="Name"> Name : </label>
								</div>
								<div class="col-md-7 col-6">
									<input type="text" class="form-control" id="Name" name="name" placeholder="--Enter Your Name--">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-4 col-6 text-center">
									<label for="Email"> Email : </label>
								</div>
								<div class="col-md-7 col-6">
									<input type="email" class="form-control" id="Email" name="email" placeholder="--Enter Your Email--">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-4 col-6 text-center">
									<label for="Address"> Address : </label>
								</div>
								<div class="col-md-7 col-6">
									<input type="text" class="form-control" id="Address" name="address" placeholder="--Enter Your Address--">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-4 col-6 text-center">
									<label for="Patient_Age"> Age : </label>
								</div>
								<div class="col-md-7 col-6">
									<input type="number" class="form-control" id="Patient_Age" name="age" placeholder="--Enter Your Age--">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-4 col-6 text-center">
									<label for="Patient_Phone"> Phone : </label>
								</div>
								<div class="col-md-7 col-6">
									<input type="text" class="form-control" id="Patient_Phone" name="phone" placeholder="--Enter Your Phone--">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-4 col-6 text-center">
									<label for="Patient_DOB"> DOB : </label>
								</div>
								<div class="col-md-7 col-6">
									<input type="date" class="form-control" id="Patient_DOB" name="dob" >
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-4 col-6 text-center">
									<label for="Patient_Gender"> Gender :</label>
								</div>
								<div class="col-md-7 col-6" id="Patient_Gender" class="form-control">
									<input type="radio" name="gender" value="Male" id="male">
									<label for="male"> : Male</label>
									<input type="radio" name="gender" value="Female" id="female">
									<label for="female"> : Female</label>
								</div>
							</div>
							<div class="row form-group mt-5">
								<div class="col-md-5 ml-auto mr-auto">
									<input type="submit" class="btn btn-outline-info btn-block" id="btnSave" name="btnSave" value="Register">
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>