<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">&nbsp;&nbsp;<i class="fa-solid fa-house-medical"></i>&nbsp;&nbsp;HOSPITEX</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link-active" href="index.jsp">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link-active" href="admin/doctor.jsp">DOCTOR</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link-active" href="admin/view_doctor.jsp"> VIEW DOCTOR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link-active" href="patient.jsp">PATIENT</a>
                </li>
            </ul>
            <form class="d-flex" action="adminLogout" method="post">
    <div class="dropdown">
        <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            Admin
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><button class="dropdown-item" type="submit">Logout</button></li>
        </ul>
    </div>
</form>

        </div>
    </div>
</nav>

<style>
  .navbar {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Use a modern sans-serif font */
    font-size: 1.1rem; /* Slightly increase font size for readability */
    padding-top: 0.1rem; /* Reduce top padding */
    padding-bottom: 0.1rem; /* Reduce bottom padding */
    padding-right:1.5rem;
  }

  .navbar-brand {
    font-size: 1.6rem; /* Larger font size for brand name */
    font-weight: bold; /* Bold font for emphasis */
    color: #ffffff !important; /* White color for brand name */
  }

  .navbar-brand i {
    font-size: 1.8rem; /* Larger icon size */
  }

   .nav-link-active {
    color: #ffffff !important; /* White color for links */
    font-weight: 500; /* Medium font weight */
    padding-left: 25px; /* Increase padding for spacing */
    transition: color 0.3s ease, background-color 0.3s ease; /* Smooth color transition */
    text-decoration:none;
  }

   .nav-link-active:hover {
    color: #ffc107 !important; /* Gold color on hover */
    border-radius: 5px; /* Rounded corners */
    text-decoration:none;
    
  }

  .navbar-toggler {
    border: none; /* Remove border from the toggle button */
  }

  .navbar-toggler-icon {
    color: #ffffff; /* White color for the toggle icon */
  }
</style>
