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


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />

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
	padding-left: 20px;
	text-align: center;
	background-color: #BFBFBF;
	width: 100%;
}

.navbar {
	background-color: #305496;
}

.navbar-nav {
	font-size: 20px;
}

.nav-link-white {
	color: white;
}

.title {
	font-weight: bold;
	font-size: 28px;
}

.form-row {
	margin-bottom: 20px;
}

.form-check-inline {
	margin-bottom: 10px;
}
</style>
</head>

<body>
	<div>

		<nav class="navbar navbar-expand-sm navbar-dark">
			<a class="navbar-brand" href="#">Movie Cruiser <em
				class="fa fa-film"></em></a></a>
			<button class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="navbar-brand nav-link-white"
						href="/admin"> <em class="fa fa-home">&nbsp;</em>Movie List
					</a></li
<li class="nav-item"><a class="navbar-brand" href="/logout"> <em
							class="fa fa-sign-out">&nbsp;</em>Logout
					</a></li>



				</ul>
			</div>
		</nav>
		<br>


		<form:form action="edit-menu-item-success" method="post"
			modelAttribute="editMovie">
			<div class="container-fluid">

				<div class="title">Edit Movie Details</div>
				<div class="form-row">
					<div class="col-sm-3">
						<form:label path="id" for="id">ID</form:label>
						<form:input path="id" class="form-control" id="id"
							value="${Movieid} " />
					</div>
					<div class="col-sm-9">

						<form:label path="title" for="title">Title</form:label>
						<form:input path="title" type="text" class="form-control"
							id="title" value="${title}" required="required" />
					</div>
				</div>

				<div class="form-row">
					<div class="col-sm-4">
						<form:label path="boxOffice" for="price">Box-Office</form:label>
						<form:input path="boxOffice" type="text" class="form-control"
							id="price" value="${boxOffice}" required="required" />
					</div>
					<div class="col-sm-4">
						<form:label path="dateOfLaunch" for="dateOfLaunch">Date of Launch</form:label>
						<form:input path="dateOfLaunch" type="text" class="form-control"
							id="dateOfLaunch" value="${dol}" required="required" />
					</div>
					<div class="col-sm-4">
						<form:label path="genre" for="genre">Genre</form:label>
						<form:select path="genre" id="genre" class="form-control">
							<form:option value="${genre}"></form:option>
							<c:forEach items="${genreList}" var="gen" varStatus="loop">
								<option value="${gen}">${gen}</option>
							</c:forEach>

						</form:select>
					</div>
				</div>

				<div class="form-row">
					<div class="col-sm-4">
						<form:label path="active" for="active">Active</form:label>
						<br>
						<div class="form-check-inline">
							<form:label path="active" class="form-check-label">
								<form:radiobutton path="active" class="form-check-input"
									id="active" name="active" value="yes" />Yes
            </form:label>
						</div>
						<div class="form-check-inline">
							<form:label path="active" class="form-check-label">
								<form:radiobutton path="active" class="form-check-input"
									id="active" name="active" value="no" />No
            </form:label>
						</div>

					</div>


					<div class="col-sm-4">
						<form:label path="hasTeaser" for="active">Has Teaser</form:label>
						<br>
						<div class="form-check-inline">
							<form:label path="hasTeaser" class="form-check-label">
								<form:radiobutton path="hasTeaser" class="form-check-input"
									id="active" name="active" value="yes" />Yes
            </form:label>
						</div>
						<div class="form-check-inline">
							<form:label path="hasTeaser" class="form-check-label">
								<form:radiobutton path="hasTeaser" class="form-check-input"
									id="active" name="active" value="no" />No
            </form:label>
						</div>

					</div>
				</div>

				<div class="row">
					<div class="col-sm-3">
						<input name="submit" class="btn btn-success" value="Save"
							type="submit" />
					</div>
				</div>
			</div>

		</form:form>
		<!-- Footer -->
		<footer class="page-footer myfooter">



			<div class="footer-copyright text-left py-3">Copyright � 2021</div>


		</footer>



	</div>

	<!-- 
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script> -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


</body>
<script>
	$('#dateOfLaunch').datepicker({
		uiLibrary : 'bootstrap4',
		format : 'yyyy/mm/dd'
	});
</script>
</html>

<!-- End -->
