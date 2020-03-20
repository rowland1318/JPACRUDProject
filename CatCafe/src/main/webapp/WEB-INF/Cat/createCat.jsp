<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cat Cafe</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>
	<form action="addCat.do" method="Post">
		<fieldset>
			<legend>Create a Cat to Add</legend>
			<div class="form-group">
				<label for="name">Name: </label> <input type="text" name="name"
					id="name" class="form-control" required />
			</div>
			<div class="form-group">
				<label for="breed">Breed: </label> <input type="text" name="breed"
					id="breed" class="form-control" required />
			</div>
			<div class="form-group">
				<label for="age">Age: </label> <input type="number" name="age"
					id="age" class="form-control" required />
			</div>
			<div class="form-group">
				<label for="color">Color: </label> <input type="text" name="color"
					id="color" class="form-control" required />
			</div>
			<div class="form-group">
				<label for="gender">Gender</label> <select name="gender" id="gender"
					class="btn btn-secondary dropdown-toggle" required>
					<option value="M">M</option>
					<option value="F">F</option>
					<option value="NA">U</option>
				</select>
			</div>
			<input type="submit" value="Add Cat" class="btn btn-primary" />
		</fieldset>
	</form>

</body>
</html>