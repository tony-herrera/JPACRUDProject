<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body>
	<title>Car Home Page</title>
</head>
<body>

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="updatecar.do">Update a
					car!</a></li>
			<li class="breadcrumb-item"><a href="createcar.jsp">Add a
					new car!</a></li>
			<li class="breadcrumb-item active" aria-current="home.do">Home</li>
		</ol>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col align-self-start">
				<h1>
					<strong><em>Welcome to the Car World!</em></strong>
				</h1>
				<h3>
					Search your desired car via it's id <small class="text-muted"></small>
				</h3>

				<div class="col-sm">
					<form action="getCar.do" method="GET">
						Car ID: <input type="text" name="cid" /> <input type="submit"
							value="Show Car" />
					</form>
				</div>
				<img width=275 height=70
					src="https://pictures.topspeed.com/IMG/jpg/201808/next-gen-tesla-model-11.jpg"
					alt="Image of 2021 Tesla" class="img-thumbnail"> <img
					width=275 height=70
					src="https://www.prestigefordmtdora.com/inventoryphotos/5261/1fa6p8cf5l5175197/sp/1.jpg"
					alt="Image of 2020 Ford GT Mustang" class="img-thumbnail"> <img
					width=275 height=300
					src="https://blogmedia.dealerfire.com/wp-content/uploads/sites/1074/2019/09/2020-Honda-Civic-Si-Coupe-exterior-shot-with-rallye-red-paint-color-parked-outside-in-a-desert-as-the-sun-sets_o.jpg"
					alt="Image of 2020 Honda Civic" class="img-thumbnail"><img
					width=275 height=100
					src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/aston-martin-db9-white-1528724777.png?crop=1.00xw:1.00xh;0,0&resize=1200:*"
					alt="Image of 2020 Aston Martin DBS" class="img-thumbnail"> <img
					width=275 height=100
					src="https://cdn.motor1.com/images/mgl/Ae27x/s1/ferrari-portofino-m.jpg"
					alt="Image of 2020 Ferrari Portofino" class="img-thumbnail">

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
</body>
</html>
