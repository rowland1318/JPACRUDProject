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
<div id="wrapper">


	<h1>Cat Cafe</h1>
	<div class="container-fluid">
		<form action="listCats.do" method="GET" class="form">
		<input type="submit" value="List All Cats" class="form-control" />
		</form>
		<form action="createCatPage.do" method="GET" class="form">
			<input type="submit" value="Add Cat" class="form-control" />
		</form>
		<form action="getCat.do" method="GET" class="form">
			Lookup Cat by ID: <input type="text" name="cid" class="form-control" /> <input
				type="submit" value="Show Cat" class="form-control" />
		</form>

	</div>

</div>
</body>
</html>