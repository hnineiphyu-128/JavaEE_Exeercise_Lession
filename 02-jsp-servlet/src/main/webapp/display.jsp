<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- CSS  -->
<link href="common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- JS  -->
<script type="text/javascript" src="common/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container">
		<div class="row  mt-5">
			<div class="col-8 ml-auto mr-auto">
				<table border="1" class="table table-dark" cellpadding="10" cellspacing="0" >
					<thead>
						<tr>
							<th> Name </th>
							<th> Email </th>
							<th> Address </th>
							<th> Age </th>
							<th> Phone </th>
							<th> DOB </th>
							<th> Gender </th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td> <%= request.getParameter("name") %> </td>
							<td> <%= request.getParameter("email") %> </td>
							<td> <%= request.getParameter("address") %> </td>
							<td> <%= request.getParameter("age") %> </td>
							<td> <%= request.getParameter("phone") %> </td>
							<td> <%= request.getParameter("dob") %> </td>
							<td> <%= request.getParameter("gender") %> </td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>