<%@page import="models.student"%>
<%@page import="dbconnection.studentdb"%>
<%@page import="services.studentservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String pinnum = request.getParameter("pinnum");
	studentservice service = new studentservice(studentdb.conn());
	student s = service.getbyid(pinnum);
	
	%>
	<form action="update" method="post">
	<input type="hidden" placeholder="enter your pinnum" name="pinnum" value="<%=s.getPinnum()%>">
	<input type="text" placeholder="enter your name" name="name" value="<%=s.getName()%>">
	<input type="email" placeholder="enter your email" name="email" value="<%=s.getEmail()%>">
	<input type="text" placeholder="enter your branch" name="branch" value="<%=s.getBranch()%>">
	<button>update</button>
	</form>
</body>
</html>