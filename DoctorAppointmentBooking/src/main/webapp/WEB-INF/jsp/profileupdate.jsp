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
<title>Dashboard Template ? Bootstrap v4.6</title>

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
						<li class="nav-item"><a class="nav-link active" href="#">
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

				<h2>Update Profile</h2>
				<div class="table-responsive">

					<div class="col-sm-6 col-md-5">

						<div class="card">

							<div class="card-body">

								<form class="form-signin" action="../updateuserprofile"
									method="post">

									<div class="form-group">
										<input type="hidden" name="id" value="${user.id}"> <label>First
											name</label> <input type="text" name="firstname"
											value="${user.firstname}" class="form-control"
											required="required">

									</div>

									<div class="form-group">

										<label>Last name</label> <input type="text" name="lastname"
											value="${user.lastname}" class="form-control"
											required="required">

									</div>

									<div class="form-group">

										<label>Age</label> <input type="text" name="age"
											value="${user.age}" class="form-control" required="required">

									</div>
									<div class="form-group">

										<label>Address</label>
										<textarea class="form-control" name="address" rows="" cols="">${user.address}</textarea>

									</div>

									<div class="form-group">

										<label>Phone number</label> <input type="text"
											value="${user.phonenumber}" name="phonenumber"
											class="form-control" required="required">

									</div>

									<div class="form-group">

										<label>Email Address</label> <input type="email" name="email"
											value="${user.email}" class="form-control"
											required="required">

									</div>
									<div class="form-group">

										<label>Password</label> <input type="text"
											value="${user.password}" name="password" class="form-control"
											required="required">

									</div>

									<div class="form-group">

										<button type="submit" class="btn btn-danger">Update</button>

									</div>

								</form>

							</div>

						</div>

					</div>

				</div>
			</main>
		</div>
	</div>
</body>
</html>