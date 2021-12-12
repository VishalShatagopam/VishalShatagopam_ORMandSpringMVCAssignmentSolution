<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRM Home Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<style>
h1 {
	text-align: center;
	border: 2px solid black;
	background-color: gray;
	padding: 20px;
}

h3 {
	text-align: center;
	background-color: honeydew;
}

table {
	text-align: center;
}

th {
	background-color: darkcyan;
}
</style>
</head>
<body>
	<div id="display">
		<h1>CUSTOMER RELATIONSHIP MANAGEMENT</h1>
		<a href="add" class="btn btn-primary btn-sm mb-3"> Add
			Student </a> <br>
		<h3>CUSTOMERS LIST</h3>
	</div>
	<table class="table table-bordered table-striped">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Action</th>

		</tr>

		<c:forEach items="${customers}" var="customer">
			<tr>

				<td>${customer.firstName}</td>
				<td>${customer.lastName}</td>
				<td>${customer.email}</td>

				<td>
					<!-- Add "update" button/link --> <a
					href="update?customerId=${customer.customerId}"
					class="btn btn-info btn-sm "> Update </a> <!-- Add "delete" button/link -->
					<a href="delete?customerId=${customer.customerId}"
					class="btn btn-danger btn-sm"
					onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
						Delete </a>
				</td>
			</tr>

		</c:forEach>
	</table>

</body>
</html>