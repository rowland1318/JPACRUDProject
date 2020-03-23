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
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="home.do">Cat Cafe</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="home.do">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="listCats.do">List All Cats</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="createCatPage.do">Add Cat to Cafe</a>
      </li>
    </ul>
   <form action="getCat.do" method="GET" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" name="cid" type="search" placeholder="Look Up Cat by ID" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<article>
  	
  	<form action="updateCat.do" method="Post">
			<fieldset>
				<legend>Update Cat</legend>
				<div class="form-group">
					<label for="name">Name: </label>
					<input type="text" value = "${cat.name}" name="name" id="name" class="form-control" required />
				</div>
				<div class="form-group">
					<label for="breed">Breed: </label>
					<input type="text" value = "${cat.breed}"  name="breed" id="breed" class="form-control" required/>
				</div>
				<div class="form-group">
					 <label for="age">Age: </label>
					 <input type="number" value = "${cat.age}"  name="age" id="age" class="form-control" required/>
				</div>
				<div class="form-group">
					<label for="rentalDuration">Color: </label>
					<input type="text" value = "${cat.color}"  name="color" id="color" class="form-control" required />
				</div>
				<div class="form-group">
					<label for="gender">Gender: </label>
					<select name="gender" selected = "${cat.gender}"  id="gender" class="btn btn-secondary dropdown-toggle" required>
						<option value="M">M</option>
						<option value="F">F</option>
						<option value="U">U</option>
					</select>				
				</div>
				<input type = "hidden" name = "id" value = "${cat.id}"/>
				<input type="submit" value="Update Cat" class="btn btn-primary"/>
			</fieldset>
		</form>
  
  	</article>
  	
</body>
</html>