<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
}

.nav {
	color: white;
}

.row-bold {
	font-weight: bold;
}

.navbar-nav {
	font-size: 20px;
}
</style>

<!-- custom css -->
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
					<li class="nav-item"><a class="navbar-brand nav" href="/movie-list">
							<em class="fa fa-home"></em> Movie List
					</a></li>
					<li class="nav-item"><a class="navbar-brand nav"
						href="showfavorite"> <em class="fa fa-bookmark"></em>
							Favorites
					</a></li>
					<li class="nav-item"><a class="navbar-brand" href="/logout"> <em
							class="fa fa-sign-out">&nbsp;</em>Logout
					</a></li>


				</ul>
			</div>
		</nav>
		<div class="container-fluid">
			<div class="container">
				<br>
				<h4 class="row-bold">Movies List</h4>
				<br>
				<div class="row row-bold">
					<div class="col-lg-2 col-md-2 col-sm-2">
						<span>Movie Name</span>
					</div>

					<div class="col-lg-2 col-md-2 col-sm-2">
						<span>Box Office</span>
					</div>



					<div class="col-lg-2 col-md-2 col-sm-2">
						<span>Release Date</span>
					</div>

					<div class="col-lg-2 col-md-2 col-sm-2">
						<span>Genre</span>
					</div>

					<div class="col-lg-2 col-md-2 col-sm-2">
						<span>Action</span>
					</div>

				</div>
				<br>
				<!-- row -->




				<c:forEach items="${inf}" var="temp">
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2">
							<span>${fn:toUpperCase(temp.title)}</span>
						</div>

						<div class="col-lg-2 col-md-2 col-sm-2">
							<span><em class="fa fa-usd row-bold"></em>${temp.boxOffice}</span>
						</div>



						<div class="col-lg-2 col-md-2 col-sm-2">

							<span><fmt:formatDate value="${temp.dateOfLaunch}"
									type="date" pattern="dd-MMM-yyyy" /></span>
						</div>

						<div class="col-lg-2 col-md-2 col-sm-2">
							<span>${fn:toUpperCase(temp.genre)}</span>
						</div>

						<div class="col-lg-2 col-md-2 col-sm-2">
							<a href="favorites?id=${temp.id}" class="btn btn-info">Add to
								Favorite</a>
						</div>
					</div>
					<!-- row -->
					<div class="row">
						<br>
					</div>
				</c:forEach>

			</div>
			<!-- container -->
		</div>
		<!-- container fluid -->


		<br>
		<!-- Footer -->
		<footer class="page-footer myfooter">


			<!-- Copyright -->
			<div class="footer-copyright text-left py-3">Copyright � 2021</div>
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

</body>

</html>

<!-- End -->
