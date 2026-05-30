package com.esukan.controller;

import com.esukan.model.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Retrieve user inputs from login.jsp
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        String errorMessage = null;
        
        // 2. Simple Front End Input Validation
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            errorMessage = "Please enter both Email and Password!";
        }
        
        if (errorMessage != null) {
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        
        // 3. Database Check
        com.esukan.dao.userDAO userDAO = new com.esukan.dao.userDAO();
        
        User loggedInUser = userDAO.validateUser(email, password); 
        
        if (loggedInUser != null) {
            // 4. Session Management: Store authenticated object state
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", loggedInUser);
            
            // Redirect smoothly to your styled dashboard view
            response.sendRedirect("dashboard.jsp");
        } else {
            // Authentication failed
            request.setAttribute("errorMessage", "Invalid email or password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
