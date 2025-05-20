<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html>
<html>
<head>
  <%@ include file="components/allcss.jsp" %>
    <meta charset="ISO-8859-1">
    <title>User Appointment</title>
    <style type="text/css">
        .paint-card {
            box-shadow: 0px 0px 8px 0px rgba(0, 0, 0, 0.3);
        }

        .point-cord {
            box-shadow: 8px 0 rgba(0, 0, 0, 0.3);
        }

        .backimg {
            background: url("images/hospital_background.jpg");
            height: 20vh;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <%@ include file="components/navbar.jsp" %>
    <div class="container-fluid backimg p-5">
        <p class="text-center fs-2 text-white"></p>
        <div class="container p-3">
            <div class="row">
                <div class="col-md-6 p-5">
                <br><br><br>
                    <img alt="doctor" height="450px" width="350px" src="images/doct2.jpg" style="margin-left:10%";>
                </div>

                <div class="col-md-6">
                <br><br><br><br>
                    <div class="card paint-card">
                    
                        <div class="card-body">
                            <p class="text-center fs-3">User Appointment</p>

                            <c:if test="${not empty errorMsg}">
                                <p class="fs-4 text-center text-danger">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session" />
                            </c:if>

                            <c:if test="${not empty succMsg}">
                                <p class="fs-4 text-center text-success">${succMsg}</p>
                                <c:remove var="succMsg" scope="session" />
                            </c:if>
                            

                            <form class="row g-3" action="add_appoint" method="post">
                                <input type="hidden" name="userid" value="${userObj.id}">
                                
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Full Name</label> 
                                    <input required type="text" class="form-control" name="fullname">
                                </div>

                                <div class="col-md-6">
                                    <label>Gender</label> 
                                    <select class="form-control" name="gender" required>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                    </select>
                                </div>

                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Age</label>
                                    <input required type="number" class="form-control" name="age">
                                </div>

                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Appointment Date</label> 
                                    <input type="date" class="form-control" required name="appoint_date">
                                </div>

                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Email</label> 
                                    <input required type="email" class="form-control" name="email">
                                </div>

                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Phone No</label> 
                                    <input maxlength="10" required type="number" class="form-control" name="phno">
                                </div>

                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Diseases</label> 
                                    <input required type="text" class="form-control" name="diseases">
                                </div>

                                <div class="col-md-6">
                                    <label for="inputPassword4" class="form-label">Doctor</label> 
                                    <select required class="form-control" name="doct">
                                        <option value="">--select--</option>
                                        <option value="doctorName">Doctor Name</option> <!-- Replace "doctorName" with the actual value -->
                                    </select>
                                </div>

                                <div class="col-md-12">
                                    <label>Full Address</label>
                                    <textarea required name="address" class="form-control" rows="3"></textarea>
                                </div>

                                <c:if test="${empty userObj}">
                                    <a href="ulogin.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
                                </c:if>

                                <c:if test="${not empty userObj}">
                                    <button type="submit" class="col-md-6 offset-md-3 btn btn-success">Submit</button>
                                </c:if>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
