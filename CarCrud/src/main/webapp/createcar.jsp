<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Car</title>
</head>
<body>
	<form action="createcar.do" method="GET">
		<label for="make">Make of the Car:</label> <input type="text"
			name="make" value="make"> <br> <label for="make">Model
			of the Car:</label> <input type="text" name="model" value="model"> <br>
		<label for="price">Price of the Car:</label> <input type="text"
			name="price" value="price"> <br> <label
			for="safetyRating">Safety Rating of the Car:</label> <input
			type="text" name="safetyRating" value="safetyRating"> <br>
		<label for="year">The year of the Car:</label> <input type="text"
			name="year" value="year"> <br> <label for="maxSpeed">The
			max speed of the Car:</label> <input type="text" name="maxSpeed"
			value="maxSpeed"> <br> <label for="fuelType">Fuel
			Type:</label> <select name="fuelType" id="fuelType">
			<option value="1">Gas</option>
			<option value="2">Electric</option>
		</select> <input type="submit" />
	</form>
	<a href="home.do">Go to HomePage</a>
</body>
</html>