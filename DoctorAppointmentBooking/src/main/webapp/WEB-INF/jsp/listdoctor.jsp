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
			Page</a>
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
							href="admin_dashboard"> <span data-feather="home"></span>
								Home <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/doctordetails"> <span data-feather="file"></span> Add
								Doctor
						</a></li>
						<li class="nav-item"><a class="nav-link" href="staffdetails">
								<span data-feather="shopping-cart"></span> Add Staff
						</a></li>
						<li class="nav-item"><a class="nav-link" href="bookhistory">
								<span data-feather="layers"></span> Booking history
						</a></li>
					</ul>
				</div>

			</nav>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Admin Dashboard</h1>
				</div>

				<h2>Doctor List</h2>
				<a href="/doctor" class="btn btn-success">Add+</a>
				<div class="table-responsive">
					<table class="table table-striped table-bordered mt-1">
						<thead>
							<tr class="text-center">
								<th>SrNo</th>
								<th>Image</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Department</th>
								<th>Qualification</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${doctor}" var="d" varStatus="count">
								<tr class="text-center">
									<td>${count.index+1}</td>
									<td><img alt="" src="data:image/jpg;base64,${d.image}"
										width="100px"></td>
									<td>${d.firstname1}</td>
									<td>${d.lastname1}</td>
									<td>${d.speciality}</td>
									<td>${d.qualification}</td>
									<td><a href="edit-doctor/${d.id}"
										class="btn btn-primary badge">Edit</a> <a
										href="delete1/${d.id}" class="btn btn-danger badge"
										onclick="return confirm('Are You Sure')">Delete</a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</main>
		</div>
	</div>

</body>
</html>