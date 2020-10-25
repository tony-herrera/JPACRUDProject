<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create your new car!</title>
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
			</c:when>
		</c:choose>
	</div>
	<br>
	<a href="home.do">Go to HomePage</a>
</body>
</html>