<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

    <link href="offcanvas.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    <main role="main" class="container">
      <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-sm">
        <img class="mr-3" src="image/User-Icon-300x300.jpg" alt="" width="48" height="48">
        <div class="lh-100">
          <h6 class="mb-0 text-dark lh-100">User Details</h6>
        </div>
      </div>
    </main>
    <div class="container mt-5">
  <table class="table table-striped table-boardered">
    <tr class="text-center">
    
        <th>SrNo</th>
        <th>First Name</th>
        <th>Last Name</th>
		<th>Age</th>
		<th>Address</th>
		<th>Phone Number</th>
		<th>Email</th>
    
    </tr>
<c:forEach items="${patient}" var="p" varStatus="count">
    <tr class="text-center">

      <td>${count.index+1}</td>
      <td>${p.firstname}</td>
      <td>${p.lastname}</td>
      <td>${p.age}</td>
      <td>${p.address}</td>
      <td>${p.phonenumber}</td>
      <td>${p.email}</td>
    </tr>
</c:forEach> 

  </table>
  </div>
  </body>
</html>