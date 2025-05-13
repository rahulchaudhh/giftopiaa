package com.giftopiaa.controller;

import com.giftopiaa.model.UserModel;
import com.giftopiaa.service.RegisterService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(
    asyncSupported = true,
    urlPatterns = {"/register"}
)
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = Logger.getLogger(RegisterController.class.getName());
    
    private final RegisterService registerService;
    
    public RegisterController() {
        this.registerService = new RegisterService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/pages/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        // Get form parameters
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String phoneNumber = req.getParameter("phoneNumber");
        
        // Basic validation
        if (username == null || password == null || fullName == null || email == null) {
            LOGGER.log(Level.WARNING, "Registration failed: Required fields missing");
            req.setAttribute("error", "All required fields must be filled");
            req.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(req, resp);
            return;
        }
        
        // Check if passwords match
        if (!password.equals(confirmPassword)) {
            LOGGER.log(Level.WARNING, "Registration failed: Passwords don't match");
            req.setAttribute("error", "Passwords do not match");
            req.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(req, resp);
            return;
        }
        
        // Default role ID for regular users
        Integer roleId = 1; 
        
        // Call the service to register the user
        UserModel registeredUser = registerService.registerUser(
            username, password, fullName, email, phoneNumber, roleId
        );
        
        if (registeredUser != null) {
            // Registration successful
            LOGGER.log(Level.INFO, "User registered successfully: {0}", username);
            
            HttpSession session = req.getSession();
            session.setAttribute("registrationSuccess", true);
            session.setAttribute("username", username);
            
            req.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(req, resp);
        } else {
            // Registration failed
            LOGGER.log(Level.WARNING, "Registration failed for user: {0}", username);
            req.setAttribute("error", "Registration failed. Please try again.");
            req.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(req, resp);
        }
    }
}