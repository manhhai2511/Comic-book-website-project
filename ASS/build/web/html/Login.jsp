<%-- 
    Document   : Login
    Created on : Feb 7, 2022, 8:27:06 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Login.css" rel="stylesheet" type="text/css" />

        <title>JSP Page</title>
    </head>
    <body>
       <div class="container">
		<header>Login Form</header>
		<form action ="LoginControl" method ="post">
			<div class="input-field">
                            <input type="text" name="username" required>
				<label>Email or Username</label>
			</div>
			<div class="input-field">
                            <input class="pswrd" type="password" name="password" required>
				<label>Password</label>
			</div>
			<div class="button">
				<div class="inner">
				</div>
				<button>LOGIN</button>
			</div>
                    <div class="button">
				<div class="inner">
				</div>
				<button><a href="View">Cancel</a></button>
			</div>
		</form>
                <div style="color: red">${requestScope.errorLogin}</div>
                
		<div class="signup">
                    Not a member? <a href="http://localhost:8080/ASS/dang_ky">Signup now</a></br>
                    
                        <a href="forgot">Forgot Password</a>
		</div>
	</div>
    </body>
</html>
