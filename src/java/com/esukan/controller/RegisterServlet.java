/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.esukan.controller;

import com.esukan.model.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author adriana
 */
@WebServlet(name = "RegisterServlet", urlPatterns ={"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException,IOException{
        //Retrieve form parameters from register.jsp
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // Project Requirement: Registration with Validation
        String errorMessage = null;
        
        // 1. Check if any fields are completely blank
        if (fullName == null || fullName.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            password == null || password.trim().isEmpty()) {
            
            errorMessage = "All fields are Required!";
            
        // 2. If fields aren't blank, check for a valid email format
        } else if (!email.contains("@") || !email.contains(".")) {
            errorMessage = "Invalid email format! Please include an '@' and a '.'";
            
        // 3. Check if password meets security requirements
        } else if (password.length() < 6) {
            errorMessage = "Password must be at least 6 characters long!";
        }
        
        if(errorMessage != null){
            //Validation failed: send back to registration page with error message
            request.setAttribute("errorMessage",errorMessage);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else{
            //Validation passed
            User newUser = new User();
            newUser.setFullName(fullName);
            newUser.setEmail(email);
            newUser.setPassword(password);
            
            //database insertion
            com.esukan.dao.userDAO userDAO = new com.esukan.dao.userDAO();
            boolean registrationSuccess = userDAO.registerUser(newUser);
            
            if(registrationSuccess){
                response.sendRedirect("login.jsp");
            } else{
                request.setAttribute("errorMessage", "Registration failed! Email might already be registered.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        }
    }
}



