<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <a class="navbar-brand" href="index.jsp">
    &nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-house-medical"></i>&nbsp;&nbsp;HOSPITEX
  </a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ms-auto">
     
      <c:if test="${empty userObj}">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminlogin.jsp"><i class="fa-solid fa-right-to-bracket"></i> &nbsp;ADMIN</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctorlogin.jsp">DOCTOR<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="userlogin.jsp">USER<span class="sr-only">(current)</span></a>
        </li>
      </c:if>

      <c:if test="${not empty userObj}">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="appointment.jsp">VIEW APPOINTMENT</a>
        </li>
        
        
        
        
        <div class="dropdown">
  <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
<i class="fa-solid fa-circle-user"></i> ${userObj.name }
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">Change Password</a></li>
    <li><a class="dropdown-item" href="userLogout">Logout</a></li>
   
  </ul>
</div>


      
      </c:if>
    </ul>
  </div>
</nav>

<style>
  .navbar {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 1.1rem;
    padding-top: 0.1rem;
    padding-bottom: 0.1rem;
    padding-right: 1.5rem;
  }

  .navbar-brand {
    font-size: 1.6rem;
    font-weight: bold;
    color: #ffffff !important;
  }

  .navbar-brand i {
    font-size: 1.8rem;
  }

  .navbar-nav .nav-link {
    color: #ffffff !important;
    font-weight: 500;
    padding-left: 20px;
    transition: color 0.3s ease, background-color 0.3s ease;
  }

  .navbar-nav .nav-link:hover {
    color: #ffc107 !important;
    background-color: rgba(255, 255, 255, 0.1);
    border-radius: 5px;
  }

  .navbar-toggler {
    border: none;
  }

  .navbar-toggler-icon {
    color: #ffffff;
  }
</style>

<!-- Include Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNlphOe0Lj1cdF5ygbmdvOkPeXaFsfF4M7k4aK/Vq4SZJ9a91T/xJzJkioPb7dT" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cjktHOUXtDpyY2a2w6t4mBQ5GnsKE5E9UwGvn4Q/s4Ch5FH7lF9T0U3sb8sFhvEn" crossorigin="anonymous"></script>
