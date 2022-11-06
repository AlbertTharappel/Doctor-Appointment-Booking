<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Checkout example · Bootstrap v4.6</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/checkout/">



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
<link href="form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">
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
						<li class="nav-item"><a class="nav-link active"
							href="user_dashboard"> <span data-feather="home"></span>
								Dashboard <span class="sr-only">(current)</span>
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
			<div class="container">
				<div class="py-5 text-center">
					<h2>AppointmentBook form</h2>
				</div>
				<div class="row">
					<div class="col-md-8 order-md-1">
						<h2 class="text-left">Book Details</h2>
						<br> <br>
						<form class="form-signin" action="/savebook" method="post">
							<div class="mb-3">

								<input type="hidden" name="doc" value="${doctor.id}"> <input
									type="hidden" name="p" value="${user.id}"> <label>Name
									: </label> <span></span> ${user.firstname} ${user.lastname}
							</div>
							<div class="mb-3">
								<label>Age :</label> <span>${user.age}</span>
							</div>

							<div class="mb-3">
								<label>Address : </label> <span>${user.address}</span>
							</div>
							<div class="mb-3">
								<label>Phone Number : </label> <span>${user.phonenumber}</span>
							</div>
							<div class="mb-3">
								<label>Email : </label> <span>${user.email}</span>
							</div>
							<div class="mb-3">
								<label>Doctor Name</label> <span>${doctor.firstname1}
									${doctor.lastname1}</span>
							</div>

							<div class="mb-3">
								<label>Department</label> <span>${doctor.speciality}</span>
							</div>

							<div class="mb-3">
								<label>Qualification</label> <span>${doctor.qualification}</span>
							</div>

							<div class="mb-3">
								<label>Date</label> <input type="date" class="form-control"
									name="date" required="required">
							</div>
							<div class="mb-4">
								<button class="btn btn-success btn-lg btn-block" type="submit">Book</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
