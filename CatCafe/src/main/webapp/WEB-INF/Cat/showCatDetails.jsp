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


	<div class ="container-fluid">
		<h3>${cat.name}(ID: ${cat.id})</h3>
		<p>Age: ${cat.age}</p>
		<p>Color: ${cat.color}</p>
		<p>Breed: ${cat.breed}</p>
		<p>Gender: ${cat.gender}</p>
	</div>
	
	<div>
</div>

</body>
</html>