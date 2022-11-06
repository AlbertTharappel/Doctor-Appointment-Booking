<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/dashboard/">



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
<link href="css/dashboard.css" rel="stylesheet">
</head>
<body>

	<nav
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="/">Home
		</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-toggle="collapse" data-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<input class="form-control form-control-dark w-100" type="text"
			placeholder="Search" aria-label="Search">
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link"
				href="logout">Sign out</a></li>
		</ul>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="sidebar-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active" href="user_dashboard">
								<span data-feather="home"></span> Dashboard <span
								class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="booking">
								<span data-feather="shopping-cart"></span> Book Appointment
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/book"> <span
								data-feather="layers"></span> Booking Status
						</a></li>
					</ul>

				</div>
			</nav>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">User Dashboard</h1>
				</div>

				<h2>Doctors List</h2>
				<form action="/booking" class="form-inline my-2 my-lg-0">
					<input name="speciality" value="${search}"
						class="form-control mr-sm-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					<input class="btn btn-secondary ml-2" type="button"
						onclick="clearsearch()" value="clear">

				</form>
				<c:forEach items="${doctor}" var="d">
					<li
						class="list-group-item d-flex justify-content-between align-items-center">
						<div class="d-flex align-items-center">
							<img src="data:image/jpg;base64,${d.image}" alt=""
								style="width: 45px; height: 45px" class="rounded-circle" />
							<div class="ms-3">
								<p class="fw-bold mb-1">${d.firstname1}${d.lastname1}</p>
								<p class="text-muted mb-0">${d.speciality}</p>
								<p class="text-muted mb-0">${d.qualification}</p>
							</div>
						</div> <a class="btn btn-link btn-rounded btn-sm"
						href="appointment-booking/${d.id}" role="button">Book
							Appointment</a>
					</li>
				</c:forEach>
			</main>
		</div>
	</div>
	<script type="text/javascript">
		function clearsearch() {
			window.location = "/booking";
		}
	</script>
</body>
</html>