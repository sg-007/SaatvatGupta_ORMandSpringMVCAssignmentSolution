<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
crossorigin="anonymous">

<title>Save Customer</title>
</head>

<body>

	<div class="container">

		<h3>Save Customer</h3>
		<hr>

		<form action="/GradedProjectSpring/customer/saveCustomer" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" placeholder="CustomerID" />

			<div class="form-inline">
				<input type="text" name="firstName"
					class="form-control-sm" placeholder="Enter your FirstName">
			</div>


			<div class="form-inline">

				<input type="text" name="lastName"
					class="form-control-sm" placeholder="Enter your LastName">
			</div>


			<div class="form-inline">

				<input type="text" name="email"
					class="form-control-sm" placeholder="Enter your email">
			</div>


			<button type="submit" class="btn btn-success">Save</button>

		</form>

		<hr>
		<a href="/GradedProjectSpring/customer/list">Back</a>

	</div>
</body>

</html>










