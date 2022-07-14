<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<style>h1 {text-align: center;}</style>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
 crossorigin="anonymous">

<title>Customers List</title>
</head>

<body style="background-color:powderblue;">

	<div class="container">
	<p></p>
	<p></p>
		<h1 class="display-4">CUSTOMER RELATIONSHIP MANAGEMENT</h1>
		<hr>

			<a href="/GradedProjectSpring/customer/showForm"
				class="btn btn-secondary"> Add Customer </a>
		<hr>
		<table class="table table-striped table-hover table">
			<thead class="table-dark">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${customers}" var="customer">
					<tr>
						<td><c:out value="${customer.firstName}" /></td>
						<td><c:out value="${customer.lastName}" /></td>
						<td><c:out value="${customer.email}" /></td>
						<td>
						
						<a href="/GradedProjectSpring/customer/updateCustomer?id=${customer.id}"
							class="btn btn-info btn-sm"> Update </a> |
							<a href="/GradedProjectSpring/customer/deleteCustomer?id=${customer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete the employee ${customer.firstName} ${customer.lastName}?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>