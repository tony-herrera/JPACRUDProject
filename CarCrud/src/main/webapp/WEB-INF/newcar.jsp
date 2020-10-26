<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<meta charset="UTF-8">
<style>
body {
	background-color: darkGrey;
}

h1 {
	color: blue;
}

div {
	color: eggwhite;
}
</style>
<title>Create your new car!</title>
</head>
<body>
<body>

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active"><a href="createcar.jsp">Add
					a New Car!</a></li>
		</ol>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col align-self-start">

				<div>
					<c:choose>
						<c:when test="${! empty car}">
							<div>
								<h2>
									Car ID: ${car.id} <br>Car Make: ${car.make} <br> Car
									Model: ${car.model}<br>Car Year: ${car.year} <br> Car
									Safety Rating: ${car.safetyRating} <br> Price: $
									${car.price}
								</h2>
								<br>
							</div>
						</c:when>
					</c:choose>
					<table class="table table-dark table table-striped table-hover">
						<thead class="thead thead-light">
							<tr>
								<th scope="col">Make</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cararray}" var="car">
								<tr>
									<td><a href="getCar.do?cid=${car.id}">${car.make}</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
						integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
						crossorigin="anonymous"></script>
					<script
						src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
						integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
						crossorigin="anonymous"></script>
					<script
						src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
						integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
						crossorigin="anonymous"></script>
				</div>
				<br> <a href="home.do">Go to HomePage</a>
</body>
</html>