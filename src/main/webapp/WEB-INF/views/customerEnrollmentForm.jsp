<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<style>
h1 {
	text-align: center;
	background-color: thistle;
}
span{
padding: 20px;
font-size: 24px;
}
</style>

</head>
<body>
	<div class="container">

		<h1>CUSTOMER RELATIONSHIP MANAGEMENT</h1>
		<br> <br>
		<p>Save Customer</p>
		<hr>
		<form action="save" method="POST">


			<input type="hidden" name="customerId" value="${Customer.customerId}" />

			<div class="form-inline"> 

				<input type="text" name="firstName" value="${Customer.firstName}"
					class="form-control mb-4 col-4" placeholder="Firstname">
				
			</div>

			<div class="form-inline">

				<input type="text" name="lastName" value="${Customer.lastName}"
					class="form-control mb-4 col-4" placeholder="Lastname">


			</div>

			<div class="form-inline">

				<input type="text" name="email" value="${Customer.email}"
					class="form-control mb-4 col-4" placeholder="email">



			</div>

			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr>
		<a href="./">Back to Students List</a>

	</div>
</body>
</html>