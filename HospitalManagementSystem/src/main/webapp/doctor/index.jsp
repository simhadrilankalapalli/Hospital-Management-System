<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Dashboard</title>
<%@include file="../components/allcss.jsp" %>
</head>
<body>

 <c:if test="${empty doctObj}">
    	<c:redirect url="../doctorlogin.jsp"></c:redirect>
    </c:if>
    

<%@include file="navbar.jsp" %>
<h1>Doctor Dashboard</h1>
</body>
</html>