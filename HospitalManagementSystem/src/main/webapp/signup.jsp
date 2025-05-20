<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="components/allcss.jsp" %>
<meta charset="ISO-8859-1">
<title> Signup Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    
    h1{
    color:green;
    }
    
    .signup-container {
        width: 370px;
        margin: 0 auto;
        margin-top: 7%;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2);
    }
    .signup-container h1 {
        text-align: center;
    }
    .signup-container input[type="text"],
    .signup-container input[type="email"], 
    .signup-container input[type="password"] {
        width: 100%;
        padding: 7px;
        margin: 5px 0 20px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        
    }
    
.signup-container input[type="text"]:focus, 
.signup-container input[type="email"]:focus, 
.signup-container input[type="password"]:focus {
    border-color: #4CAF50; /* Green color */
    outline: green; /* Remove default outline */
}
    .signup-container button {
        width: 100%;
        background-color: #28a745;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .signup-container button:hover {
        background-color:#218838;
    }
    
</style>
</head>
<body>
<%@include file="components/navbar.jsp" %>
<div class="signup-container">
    <h1>User Signup</h1><br>	
    
    <c:if test="${not empty sucMsg}">
    	<p class="text-center text-success fs-3">${sucMsg}</p>
    	<c:remove var="sucMsg" scope="session" />
    </c:if>
    
    <c:if test="${not empty errorMsg}">
    	<p class="text-center text-danger fs-3">${errorMsg}</p>
    	<c:remove var="errorMsg" scope="session" />
    </c:if>
    
    <form action="RegisterServlet" method="post">
        <div>
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name"  required>
        </div>

        <div>
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" required>
        </div>

        <div>
            <label for="password">Password</label>
            <input type="password" id="password" name="password"  required>
        </div>
        
        <button type="submit">Signup</button>
    </form>
</div>
</body>
</html>
