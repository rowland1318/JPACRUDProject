<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cat Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>


	<div class ="container-fluid">
		<h3>${cat.name}(ID: ${cat.id})</h3>
		<p>Age: ${cat.age}</p>
		<p>Color: ${cat.color}</p>
		<p>Breed: ${cat.breed}</p>
		<p>Gender: ${cat.gender}</p>
	</div>
	
	<div>
<a href="home.do">Home</a>
</div>

</body>
</html>