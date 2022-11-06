<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
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

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    
	<form class="form-signin" action="logincheck" method="post">
	
	  <img class="mb-4" src="image/295128.png" alt="" width="72" height="72">
	  <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
	
	<div class="container mt-3">
	
	<div class="row justify-content-center">
	
	<div class="col-sm-8 col-md-5">
	
	<div class="card">
	
	<div class="card-body">
	
	<div class="container">
	
	  <label >Email address</label>
	  <input type="email" name="email" class="form-control" placeholder="Enter Your Email address" required autofocus>
		 <p class="text-danger font-weight-bold" role="alert">${message}</p> 
	  <label>Password</label>
	
	  <input type="password" name="password" class="form-control" placeholder="Enter Your Password" required>
	  <div class="checkbox mb-3">
	
	  </div>
	
	  <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	 <p>Doesn't have an account <a href="patientreg">Create Account</a></p> 
	  </div>
	  </div>
	  </div>
	  </div>
	  </div>
	  </div>
	</form>
	
	  </body>
	</html>