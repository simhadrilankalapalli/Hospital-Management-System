<%@page import="dbconnection.studentdb"%>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<!-- Include Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Include Font Awesome CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Include AOS CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" />
<style>

body {
  padding: 0px;
  margin: 0px;/* This hides both vertical and horizontal scrollbars */
}
::-webkit-scrollbar {
    display: none;
}

  .carousel-item {
    background-color: #000; /* Fallback background color */
  }
  .carousel-item img {
    object-fit: cover;
    width: 100%;
    height: 93vh; /* Full viewport height */
  }
  .navbar-nav .nav-link {
    color: #ffffff !important; /* Ensure the text is white */
    font-weight: bold;
  }
  .point-card {
    margin-top: 10px;
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3); /* Add shadow to cards */
  }
  
  .paint-card {
    margin-top: 10px;
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3); /* Add shadow to cards */
  }
  .img-fit {
    width: 100%;
    height: auto;
  }
  
.carousel-control-prev-icon,
.carousel-control-next-icon {
  background-image: none; /* Remove the default background image */
  color: #28a745; /* Change the icon color */
}

.carousel-control-prev-icon::before,
.carousel-control-next-icon::before {
  content: '\f053'; /* Unicode for the icon (depends on the icon font used, e.g., Font Awesome) */
  font-family: 'FontAwesome'; /* Replace with the correct font family */
  color: #28a745; /* Set the icon color */
  font-size: 2rem; /* Adjust size as needed */
}

/* Adjust the icons for each direction */
.carousel-control-prev-icon::before {
  content: '\f053'; /* Left arrow icon */
}

.carousel-control-next-icon::before {
  content: '\f054'; /* Right arrow icon */
}
  
.carousel-control-prev{
margin-top:15%;
}

.carousel-control-next{
margin-top:15%;
}

.features{
color:#218838;
text-align:center;
}

.team{
color:#218838;
text-align:center;
}
</style>
</head>
<body>

<%@include file="components/navbar.jsp" %>

<% Connection conn = studentdb.conn();

%>

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="carousel-caption d-none d-md-block text-start" style="top: 21%; left: 5%;">
        <h1 style="color:#28a745;">Hospital Information <br> Management System (HIMS)</h1><br>
        <p style="font-size:1.3rem; color:black;">SaaS-based Digital Healthcare platform. An Integrated <br>Solution with billing for In-patient (IP) and Out-Patient (OP) to <br> enable easy Insurance claims, HIPAA-compliant, Secure <br> patient data storage.</p>
      </div>
      <img src="images/hospi1.jpg" class="d-block w-100" alt="...">
    </div>
    
    <div class="carousel-item">
      <div class="carousel-caption d-none d-md-block text-start"  style="top: 24%; left: 5%;">
        <h1  style="color:#28a745;">Multi-Chain Clinic Management</h1><br>
        <p style="font-size:1.3rem; color:black;">Effortless Multi-Location Coordination. Manage multiple clinic locations <br> seamlessly with our multi-chain clinic management feature, ensuring <br> consistent operations and patient care across all branches.</p>
      </div>
      <img src="images/hospi2.jpg" class="d-block w-100" alt="...">
    </div>
    
    <div class="carousel-item">
      <div class="carousel-caption d-none d-md-block text-start"  style="top: 24%; left: 5%;">
        <h1  style="color:#28a745;">Pharmacy Management</h1><br>
        <p style="font-size:1.3rem; color:black;">Inventory and stock management, low stock reminder <br> notifications, easy purchase and returns, vendor payment <br> management, Detailed daily transaction overview, GST output <br> reports and more.</p>
      </div>
      <img src="images/hospi3.jpg" class="d-block w-100" alt="...">
    </div>
    
    <div class="carousel-item">
      <div class="carousel-caption d-none d-md-block text-start"  style="top: 25%; left: 5%;">
        <h1  style="color:#28a745;">Digital Lab Reports</h1><br>
        <p style="font-size:1.3rem; color:black;">Instant and Accurate Reporting. Deliver digital lab reports <br>quickly and accurately, enhancing the speed and quality of <br> your labs reporting capabilities.</p>
      </div>
      <img src="images/hospi4.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true" ></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<hr>

  <div class="container p-3">
    <h1 class="features">Key Features of our Hospital</h1>
    <div class="row">
      <div class="col-md-8 p-5">
        <div class="row">
          <div class="col-md-6">
            <div class="card point-card" data-aos="fade-up" data-aos-duration="2000">
              <div class="card-body">
                <p class="fs-5">100% Safety</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore</p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card point-card" data-aos="fade-up" data-aos-duration="2000">
              <div class="card-body">
                <p class="fs-5">Clean Environment</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 mt-2">
            <div class="card point-card" data-aos="fade-up" data-aos-duration="2000">
              <div class="card-body">
                <p class="fs-5">Friendly Doctors</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 mt-2">
            <div class="card point-card" data-aos="fade-up" data-aos-duration="2000">
              <div class="card-body">
                <p class="fs-5">Medical Research</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <img src="images/hospi5.jpg" alt="" class="img-fluid">
      </div>
    </div>
  </div>


<hr>

<div class="container p-2">
  <div class="row">
    <h1 class="team">Our Team</h1>

    <div class="col-md-3">
      <div class="card paint-card" data-aos="fade-up" data-aos-duration="3000">
        <div class="card-body text-center">
          <img src="images/doctor1.jpg" width="250px" height="300px" alt="Samuani Simi">
          <p class="fw-bold fs-5">Samuani Simi</p>
          <p class="fs-7">(CEO & Chairman)</p>
        </div>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card paint-card" data-aos="fade-up" data-aos-duration="3000">
        <div class="card-body text-center">
          <img src="images/doct2.jpg" width="250px" height="300px" alt="Dr. Siva Kumar">
          <p class="fw-bold fs-5">Dr. Siva Kumar</p>
          <p class="fs-7">(Chief Doctor)</p>
        </div>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card paint-card" data-aos="fade-up" data-aos-duration="3000">
        <div class="card-body text-center">
          <img src="images/doctor4.jpg" width="250px" height="300px" alt="Dr. Niuise Paule">
          <p class="fw-bold fs-5">Dr. Niuise Paule</p>
          <p class="fs-7">(Chief Doctor)</p>
        </div>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card paint-card" data-aos="fade-up" data-aos-duration="3000">
        <div class="card-body text-center">
          <img src="images/doctor3.jpg" width="250px" height="300px" alt="Dr. Mathue Samuel">
          <p class="fw-bold fs-5">Dr. Mathue Samuel</p>
          <p class="fs-7">(Chief Doctor)</p>
        </div>
      </div>
    </div>

  </div>
</div>
<br><br>

<%@include file="components/footer.jsp"%>
<!-- Include Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- Include AOS JS -->
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
<script>
  AOS.init();
</script>

</body>
</html>
