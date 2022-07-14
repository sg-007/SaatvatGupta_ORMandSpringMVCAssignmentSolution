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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Save Customer</title>
</head>

<body style="background-color: powderblue;">

	<div class="container">
		<p></p><p></p><p></p>
		<h2>Save Customer</h2>
		<form class="form-horizontal"
			action="/GradedProjectSpring/customer/saveCustomer" method="POST">
			<input type="hidden" name="id" placeholder="id" />

			<div class="form-group">
				<label class="control-label col-sm-2" for="firstName" style="float: left">First
					Name: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control-sm" id="firstName"
						placeholder="Enter Firstname" name="firstName">
				</div>
			</div>

			<p></p>

			<div class="form-group">
				<label class="control-label col-sm-2" for="lastName" style="float: left">Last
					Name: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control-sm" id="lastName"
						placeholder="Enter Lastname" name="lastName">
				</div>
			</div>

			<p></p>

			<div class="form-group">
				<label class="control-label col-sm-2" for="email" style="float: left">Email: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control-sm" id="email"
						placeholder="Enter Email" name="email">
				</div>
			</div>

			<p></p>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-secondary btn-sm">Submit</button>
				</div>
			</div>

		</form>
		<p></p>
		<a href="/GradedProjectSpring/customer/list"
			class="btn btn-primary btn-sm"> Back </a>
	</div>
</body>

</html>