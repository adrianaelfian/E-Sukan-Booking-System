package com.esukan.controller;

import com.esukan.model.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Get email and password parameters from the JSP form
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // 2. Validate user 
        if ("student@default.com".equals(email) && "pass123".equals(password)) {
            User user = new User();
            user.setEmail(email);
            user.setFullName("Ahmad Student"); // Hardcoded name for test simulation

            HttpSession session = request.getSession();
            session.setAttribute("currentUser", user);
            response.sendRedirect("dashboard.jsp");
            
        } else if ("manager@default.com".equals(email) && "pass123".equals(password)) {
            User user = new User();
            user.setEmail(email);
            user.setFullName("Encik Manager");
            
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", user);
            response.sendRedirect("dashboard.jsp");
            
        } else {
            // If validation fails, return back to login page with an error
            request.setAttribute("errorMessage", "Invalid email or password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
