<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show me the Cars!</title>
</head>
<body>
	<div>
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
				<button type="submit" name="carId" value="${car.id}">Update</button>
				<br>
				<form action="deletecar.do" method="POST">
					<button type="submit" name="id" value="${car.id}">Delete</button>
				</form>
			</c:when>
			<c:otherwise>
				<div>That Car Id number does not exist.</div>
			</c:otherwise>
		</c:choose>
	</div>
	<a href="createcar.html">Add a new car!</a>

</body>
</html>