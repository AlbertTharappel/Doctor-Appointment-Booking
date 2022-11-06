<%@page import="com.DoctorAppointmentBooking.entities.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.101.0">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/carousel/">



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">



<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="carousel.css" rel="stylesheet">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<!-- <a class="navbar-brand" href="#">Carousel</a> -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">hello${user.firstname}</a>
					</li>
					<%
					Patient p = (Patient) session.getAttribute("user");
					if (p != null) {
						if (p.getUsertype().equals("user")) {
					%>
					<li class="nav-item"><a class="nav-link "
						href="user_dashboard">Dashboard</a></li>
					<%
					}else if(p.getUsertype().equals("admin")){
						%>
						<li class="nav-item"><a class="nav-link "
							href="admin_dashboard">Dashboard</a></li>
						<%
					}
					}
					%>
				</ul>
				<form class="form-inline mt-2 mt-md-0">
					<%
					HttpSession session2 = request.getSession();
					if (session2.getAttribute("user") != null) {
					%>
					<a class="btn btn-outline-danger my-2 my-sm-0" href="logout">Sign
						Out</a>
					<%
					} else {
					%>
					<a class="btn btn-outline-success my-2 my-sm-0" href="login">Sign
						In</a>
					<%
					}
					%>
				</form>
			</div>
		</nav>
	</header>

	<main role="main">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">

					<img src="image/WallpaperDog-10879496.jpg" alt="" height="500px"
						width="100%">

					<div class="container">
						<div class="carousel-caption text-right">
							<h1 class="text-dark">Welcome Doctor Appointment Booking
								System</h1>
							<p class="text-dark">Be not afraid,only believe</p>
						</div>
					</div>
				</div>
			</div>
			</div>
		<div class="container marketing">
			<h1 class="text-success text-center">Doctor Details</h1><br>
			<div class="row text-center">
				<c:forEach items="${doctor}" var="d">
					<div class="col-lg-4">
						<img src="data:image/jpg;base64,${d.image}" class="rounded-circle"
							width="100px" height="100px" alt="...">
						<h5>${d.firstname1}${d.lastname1}</h5>
						<h6>${d.speciality}</h6>

					</div>
				</c:forEach>
			</div>
		</div>
	</main>
</body>
</html>