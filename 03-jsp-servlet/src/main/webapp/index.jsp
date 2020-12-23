<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Courses</title>
<jsp:include page="resources/common.jsp"></jsp:include>
</head>
<body>
	
	<div class="container">
		<div class="row">
			<div class="card col-8 offset-2">
				<div class="card-body">
					<h3 class="card-title"> Add New Course </h3>
					<hr>
					<c:url var="save" value="/save-course"></c:url>
					<form action="${ save }" method="post">
						<div class="container row mt-2">
							<div class="col-md-10 ml-auto mr-auto pt-3">
								<div class="row form-group">
									<div class="col-md-4 col-6 ">
										<label for="Name"> Name : </label>
									</div>
									<div class="col-md-7 col-6">
										<input type="text" class="form-control" id="Name" name="name" placeholder="--Enter Course Name--">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-md-4 col-6 ">
										<label for="Level"> Level : </label>
									</div>
									<div class="col-md-7 col-6">
										<select class="form-control" name="level">
											<optgroup label="Choose Level">
												<option value="Basic"> Basic </option>
												<option value="Intermediate"> Intermediate </option>
												<option value="Advanced"> Advanced </option>
											</optgroup>
										</select>
									</div>
								</div>
								<div class="row form-group">
									<div class="col-md-4 col-6 ">
										<label for="Fees"> Fees : </label>
									</div>
									<div class="col-md-7 col-6">
										<input type="number" class="form-control" id="Fees" name="fees" placeholder="--Enter Fees--">
									</div>
								</div>
								<div class="row form-group mt-5">
									<div class="col-md-5 ml-auto mr-auto">
										<input type="submit" class="btn px-3 btn-outline-danger float-left" id="btnClear" name="btnClear" value="Clear">
										<input type="submit" class="btn px-3 btn-outline-primary float-right" id="btnAdd" name="btnAdd" value="Add">
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>