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
<title>Show me the Cars!</title>
</head>
<body>
	<div class="container-fluid">
		<c:choose>
			<c:when test="${! empty car}">
				<div>
					<h2>
						Car ID: ${car.id} <br>Car Make: ${car.make} <br> Car
						Model: ${car.model}<br>Car Year: ${car.year} <br> Car
						Safety Rating: ${car.safetyRating} <br> Price: $ ${car.price}
					</h2>
					<br>
				</div>
				<h4>What would you like to do with this car?</h4>
				<form action="updatecar.do">
					<label for="make">Make of the Car:</label> <input type="text"
						name="make" value="make"> <br> <label for="make">Model
						of the Car:</label> <input type="text" name="model" value="model">
					<br> <label for="price">Price of the Car:</label> <input
						type="text" name="price" value="price"> <br> <label
						for="safetyRating">Safety Rating of the Car:</label> <input
						type="text" name="safetyRating" value="safetyRating"> <br>
					<label for="year">The year of the Car:</label> <input type="text"
						name="year" value="year"> <br> <label for="maxSpeed">The
						max speed of the Car:</label> <input type="text" name="maxSpeed"
						value="maxSpeed"> <br> <label for="fuelType">Fuel
						Type:</label> <select name="fuelType" id="fuelType">
						<option value="1">Gas</option>
						<option value="2">Electric</option>
					</select>
					<button type="submit" name="id" value="${car.id}">Update</button>
				</form>
				<br>
				<form action="destroy.do">
					<button type="submit" name="id" value="${car.id}">Delete</button>
				</form>

			</c:when>
			<c:otherwise>
				<div>That Car Id number does not exist.</div>
			</c:otherwise>
		</c:choose>
		<table class="table table-dark table table-striped table-hover">
			<thead class="thead thead-light">
			</thead>
			<tbody>
				<c:forEach items="${cararray}" var="car">
					<tr>
						<td><a href="getCar.do?cid=${car.id}">${car.make}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<a href="createcar.html">Add a new car!</a>
	<br>
	<a href="home.do">Go to HomePage</a>

</body>
</html>