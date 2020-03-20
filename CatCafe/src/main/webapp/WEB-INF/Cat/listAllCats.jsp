<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<article>
  		<h2>List of Cats at the Cat Cafe</h2>
  		<table class="table table-striped">
		<thead class="thead thead-dark">
			<tr>
				<th>Name</th>
				<th>Breed</th>
				<th>Age</th>
				<th>Color</th>
				<th>Gender</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cat" items="${cats}">
				<tr>
					<td>${cat.name}</td>
					<td>${cat.breed}</td>
					<td>${cat.age}</td>
					<td>${cat.color}</td>
					<td>${cat.gender}</td>
					<td>
						<form action ="updatePage.do" method = "POST">
						<input type="hidden" value="${cat.id}" name = "cat"/>
						<input type="submit" value="Update" class="btn btn-primary"/>
						</form>
					</td>
					<td>
						<form action ="deleteCat.do" method = "POST">
						<input type="hidden" value="${cat.id}" name = "cat"/>
						<input type="submit" value="Delete" class="btn btn-danger"/>
						</form>
					</td>
				</tr>
			</c:forEach>
			
		</tbody>
		</table>
		
  	</article>
</body>
</html>