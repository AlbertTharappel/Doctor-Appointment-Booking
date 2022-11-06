<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/sign-in/">
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
<link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">

	<form action="save" method="post" class="needs-validation" novalidate>
		<img class="mb-4" src="image/png.png" alt="" width="72" height="72">

		<h1 class="h3 mb-3 font-weight-normal">SignUp Here</h1>

		<div class="container mt-3">

			<div class="row justify-content-center">

				<div class="col-sm-8 col-md-5">

					<div class="card">

						<div class="card-body">

							<div class="container">

								<label>First Name </label> <input type="text" name="firstname"
									class="form-control" placeholder="Enter Your Firstname"
									required="required">
								<div class="invalid-feedback">Please provide a valid first
									name.</div>
								<label>Last Name</label> <input type="text" name="lastname"
									class="form-control" placeholder="Enter Your Lastname" required>
								<div class="invalid-feedback">Please provide a valid last
									name.</div>
								<label>Age</label> <input type="text" name="age"
									class="form-control" placeholder="Enter Your Age" required>
								<div class="invalid-feedback">Please provide a valid age.
								</div>
								<label>Address</label> <input type="text" name="address"
									class="form-control" placeholder="Enter Your Address" required>
								<div class="invalid-feedback">Please provide a valid
									address.</div>
								<label>Phone no</label> <input type="text" name="phonenumber"
									class="form-control" placeholder="Enter Your Phoneno" required>
								<div class="invalid-feedback">Please provide a valid phone
									number.</div>
								<label>Email Address</label> <input type="email" name="email"
									class="form-control" placeholder="Enter Email address" required
									autofocus> <small id="emailHelp"
									class="form-text text-danger font-weight-bold">${errorMessage}</small>
								<div class="invalid-feedback">Please provide a valid email
									address.</div>
								<label>Password</label> <input type="password" name="password"
									class="form-control" placeholder="Enter Your Password" required>
								<div class="invalid-feedback">Please provide a valid
									password.</div>

								<div class="checkbox mb-3"></div>

								<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
									in</button>

								<p>
									Already have an account?<a href="login">Login</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script>
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						var forms = document
								.getElementsByClassName('needs-validation');
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>
</body>
</html>
