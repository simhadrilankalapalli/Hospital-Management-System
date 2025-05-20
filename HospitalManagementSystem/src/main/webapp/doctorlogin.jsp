<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="components/allcss.jsp" %>
<meta charset="ISO-8859-1">
<title> Doctor Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    
    h1{
    color:green;
    }
    
    .login-container {
        width: 370px;
        margin: 0 auto;
        margin-top: 10%;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2);
    }
    .login-container h1 {
        text-align: center;
    }
    .login-container input[type="text"], 
    .login-container input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 20px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    
     .login-container input[type="text"]:focus, 
	.login-container input[type="password"]:focus {
    border-color: #4CAF50; /* Green color */
    outline: green; /* Remove default outline */
}
    .login-container button {
        width: 100%;
        background-color: #28a745;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .login-container button:hover {
        background-color:#218838;
    }
    .remember-container {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    .remember-container input[type="checkbox"] {
        margin-right: 10px;
    }
    .remember-container a {
        text-decoration: none;
        color: #000;
    }
    .Sign-up {
        text-align: center;
    }
    a {
        text-decoration: none;
    }
    .back-container {
        text-align: center;
        margin-top: 20px;
    }
    .back {
        display: inline-block;
        background-color: #1E90FF;
        color: white;
        padding: 10px 15px;
        border-radius: 4px;
        cursor: pointer;
        text-decoration: none;
        transition: background-color 0.3s;
    }
    .back:hover {
        background-color: #1C86EE;
    }
</style>
</head>
<body>
<%@include file="components/navbar.jsp" %>
<div class="login-container">
    <h1> Doctor Login </h1><br>
    
      <c:if test="${not empty succMsg}">
        <p class="text-center text-success fs-4">${succMsg}</p>
        <c:remove var="succMsg" scope="session" />
    </c:if>
    
    <c:if test="${not empty errorMsg}">
        <p class="text-center text-danger fs-5">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session" />
    </c:if>
    
    
    <form action="doctorLogin" method="post">
        <div>
        <label>Doctor email</label>
        <input type="text" name="email" placeholder="enter email" required>
        </div>
        
        <div>
        <label>Password</label>
        <input type="password" name="password" placeholder="enter password" required>
        </div>
       
        <button type="submit">Login</button>
       
    </form>
</div>
</body>
</html>
