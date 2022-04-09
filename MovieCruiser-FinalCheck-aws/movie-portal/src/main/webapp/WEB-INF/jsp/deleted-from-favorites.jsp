<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!-- Starts -->




<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Movie Cruiser</title>
<!-- google material Icons -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- fa Icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- bootstrap css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Tangerine">
<style>
body {
	font-family: 'raleway', serif;
}

.myfooter {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	text-align: center;
	padding-left: 20px;
	background-color: #BFBFBF;
}

.navbar {
	background-color: #305496;
	font-size: 20px;
}

.alert {
	text-align: center;
}

.nav-link {
	color: white;
}
</style>

</head>

<body>
	<div>
	

		<nav class="navbar navbar-expand-sm navbar-dark">
			<a class="navbar-brand" href="#">Movie Cruiser <em
				class="fa fa-film"></em></a>
			<button class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="navbar-brand" href="/showPage"> <em
							class="fa fa-home">&nbsp;</em>Movie List
					</a></li>
					<li class="nav-item"><a class="navbar-brand nav-link-white" href="showfavorite">
							<em class="fa fa-bookmark"></em> Favorites
					</a></li>



				</ul>
			</div>
		</nav>
		<br>
		<div class="container">
			<div class="alert alert-danger">Movie Deleted from Favorites Successfully</div>
		</div>
		<br>
		<!-- Footer -->
		<footer class="page-footer myfooter">


			<!-- Copyright -->
			<div class="footer-copyright text-left py-3">Copyright © 2021</div>
			<!-- Copyright -->

		</footer>

		<!-- Footer -->

	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		setTimeout(function() {
			location = "/showfavorite"
		}, 1 * 1000)
	</script>
</body>

</html>

<!-- End -->
