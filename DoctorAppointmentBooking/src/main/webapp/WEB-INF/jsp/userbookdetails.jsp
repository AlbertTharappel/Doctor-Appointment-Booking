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
<title>Dashboard Template · Bootstrap v4.6</title>

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
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
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

				<h2>Booking List</h2>
				<div class="table-responsive">
					<table class="table table-striped table-bordered mt-1">
						<thead>
							<tr class="text-center">
								<td>SrNo</td>
								<td>Patient</td>
								<td>Doctor</td>
								<td>Appointment Date</td>
								<td>Status</td>
							</tr>
						</thead>
						<tbody id="tbody">
							<c:forEach items="${book}" var="b" varStatus="count">
								<tr class="text-center">
									<td>${count.index+1}</td>
									<td><span>Name : </span>${b.p.firstname} ${b.p.lastname} <br>
										<span>Age : </span>${b.p.age} <br> <span>Phone
											Number : </span>${b.p.phonenumber}<br> <span>Email : </span>${b.p.email}
									</td>
									<td><span>Doctor Name : </span>${b.doc.firstname1}
										${b.doc.lastname1} <br> <span>Qualification : </span>${b.doc.qualification}
										<br> <span>Department : </span>${b.doc.speciality}</td>
									<td><span>AppointmentDate : </span>${b.date}<br></td>
									<td><c:choose>
											<c:when test="${b.status=='pending'}">
        										<span class="badge badge-warning" style="padding: 10px">Pending</span>
											</c:when>
											<c:when test="${b.status=='approve'}">
        										<span class="badge badge-success" style="padding: 10px">Approve</span>
											</c:when>
											<c:otherwise>
													<span class="badge badge-danger" style="padding: 10px">Cancel</span>
											</c:otherwise>
										</c:choose></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</main>
		</div>
	</div>

</body>
<script>

$('#tbody').each(function(){

var rev = $(this).children('tr');
$(this).html(rev.get().reverse());

});

</script>
</html>