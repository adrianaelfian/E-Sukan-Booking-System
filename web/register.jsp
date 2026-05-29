<%-- 
    Document   : register
    Created on : May 29, 2026, 11:35:05 AM
    Author     : adriana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Sukan Registration</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 50px; background-color: #f4f4f4;}
            .regitration-container{ width: 300px; padding: 20px; background: white; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1);}
            .form-group { margin-bottom: 15px;}
            .form-group label{display: block; margin-bottom: 5px;}
            .form-group input{ width: 100%; padding: 8px; box-sizing: border-box;}
            .btn{ background-color: #28a745; color: white; padding: 10px; width: 100%; border: none; cursor: pointer;}
            .error{ color: red; font-size: 13px;}
        </style>
    </head>
    <body>
        <div class="register-container">
            <h2>E-Sukan Account Registration</h2>
            
            <%-- Area to display validation error messages if registration fails --%>
            <% if (request.getAttribute("errorMessage") != null) { %>
            <p class="error"><%= request.getAttribute("errorMessage") %></p>
            <%}%>
            
            <form action="RegisterServlet" method="POST">
                <div class="form-group">
                    <label>Full Name:</label>
                    <input type="text" name="fullName" required>
                </div>
                <div class="form-group">
                    <label>Email Address:</label>
                    <input type="email" name="email" required>
                </div>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" name="password" required>
                </div>
                <button type="submit" class="btn">Register</button>
            </form>
        </div>
    </body>
</html>
