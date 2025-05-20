<%@ page import="services.DoctorService" %>
<%@ page import="dbconnection.studentdb" %>
<%@ page import="models.Specialist, models.Doctor, java.util.List" %>
<%@ page import="services.SpecialistService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor's Page</title>
<%@ include file="../components/allcss.jsp" %>
<style type="text/css">
    .paint-card {
        box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
    }
    
    ::-webkit-scrollbar {
        display: none;
    }
</style>
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-3 text-center">Edit Doctor Details</p>

                    <c:if test="${not empty errorMsg}">
                        <p class="fs-3 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>

                    <c:if test="${not empty succMsg}">
                        <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>


					<%
					int id=Integer.parseInt(request.getParameter("id"));
					DoctorService ser2=new DoctorService(studentdb.conn());
					Doctor d = ser2.getDoctorById(id);
					%>




                    <form action="../updateDoctor" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" required name="fullname" class="form-control" value="<%=d.getFullName()%>">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">DOB</label>
                            <input type="date" value="<%=d.getDob()%>" required name="dob" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Qualification</label>
                            <input type="text" value="<%=d.getQualification()%>" required name="qualification" class="form-control" >
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">Specialist</label>
                            <select name="specialist" required class="form-control">
                                <option><%=d.getSpecialist()%></option>
                                
                                <%
                                SpecialistService serv = new SpecialistService(studentdb.conn());
                                List<Specialist> list = serv.getAllSpecialist();
                                for (Specialist s : list) {
                                %>
                                    <option><%= s.getSpecialistName() %></option>
                                <%
                                }
                                %>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="text" value="<%=d.getEmail()%>" required name="email" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Mob No</label>
                            <input type="text" value="<%=d.getMobNo()%>" required name="mobNo" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="text"  value="<%=d.getPassword()%>" required name="password" class="form-control">
                        </div>

						<input type="hidden" name="id" value="<%=d.getId()%>" >
						
                        <button type="submit" class="btn btn-primary col-md-12">Update</button>
                    </form>

                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
