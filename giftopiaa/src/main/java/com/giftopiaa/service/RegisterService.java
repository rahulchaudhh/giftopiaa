package com.giftopiaa.service;

import com.giftopiaa.model.UserModel;
import com.giftopiaa.util.PasswordUtil;
import com.giftopiaa.config.DbConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Service class for handling user registration functionality.
 */
public class RegisterService {
    
    private static final Logger LOGGER = Logger.getLogger(RegisterService.class.getName());
    
    /**
     * Registers a new user in the system.
     * 
     * @param username The username for the new user
     * @param password The password for the new user (will be encrypted)
     * @param fullName The full name of the user
     * @param email The email address of the user
     * @param phoneNumber The phone number of the user (optional)
     * @param roleId The role ID for the user
     * @return The newly created UserModel object, or null if registration failed
     */
    public UserModel registerUser(String username, String password, String fullName, 
                                 String email, String phoneNumber, Integer roleId) {
        try {
            // Validate input
            if (username == null || password == null || fullName == null || email == null || roleId == null) {
                LOGGER.log(Level.WARNING, "Registration failed: Required fields missing");
                return null;
            }
            
            // Check if username is available
            if (!isUsernameAvailable(username)) {
                LOGGER.log(Level.INFO, "Registration failed: Username {0} already exists", username);
                return null;
            }
            
            // Check if email is available
            if (!isEmailAvailable(email)) {
                LOGGER.log(Level.INFO, "Registration failed: Email {0} already exists", email);
                return null;
            }
            
            // Encrypt the password using the PasswordUtil
            String encryptedPassword = PasswordUtil.encrypt(username, password);
            if (encryptedPassword == null) {
                LOGGER.log(Level.SEVERE, "Registration failed: Password encryption error");
                return null;
            }
            
            // Create new user object
            UserModel user = new UserModel();
            user.setUsername(username);
            user.setPassword(encryptedPassword);
            user.setFullName(fullName);
            user.setEmail(email);
            user.setPhoneNumber(phoneNumber);
            user.setCreatedAt(new Date());
            user.setIsActive(true);
            user.setRoleId(roleId);
            
            // Save user to database
            boolean saved = saveUserToDatabase(user);
            if (!saved) {
                LOGGER.log(Level.SEVERE, "Registration failed: Could not save user to database");
                return null;
            }
            
            LOGGER.log(Level.INFO, "User registered successfully: {0}", username);
            return user;
            
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Registration failed with exception", e);
            return null;
        }
    }
    
    /**
     * Simplified registration method with default role.
     * 
     * @param username The username for the new user
     * @param password The password for the new user
     * @param fullName The full name of the user
     * @param email The email address of the user
     * @return The newly created UserModel object, or null if registration failed
     */
    public UserModel registerUser(String username, String password, String fullName, String email) {
        // Default role ID (1 typically represents a regular user)
        return registerUser(username, password, fullName, email, null, 1);
    }
    
    /**
     * Checks if a username is available (not already taken).
     * 
     * @param username The username to check
     * @return true if the username is available, false otherwise
     */
    private boolean isUsernameAvailable(String username) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            conn = DbConfig.getDbConnection();
            String sql = "SELECT COUNT(*) FROM users WHERE username = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                return rs.getInt(1) == 0; // Username is available if count is 0
            }
            
            return false; // Default to false for safety
            
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error checking username availability", e);
            return false; // Default to false on error
        } catch (ClassNotFoundException e) {
            LOGGER.log(Level.SEVERE, "Database driver not found", e);
            return false;
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                LOGGER.log(Level.WARNING, "Error closing database resources", e);
            }
        }
    }
    
    /**
     * Checks if an email is available (not already taken).
     * 
     * @param email The email to check
     * @return true if the email is available, false otherwise
     */
    private boolean isEmailAvailable(String email) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            conn = DbConfig.getDbConnection();
            String sql = "SELECT COUNT(*) FROM users WHERE email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                return rs.getInt(1) == 0; // Email is available if count is 0
            }
            
            return false; // Default to false for safety
            
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error checking email availability", e);
            return false; // Default to false on error
        } catch (ClassNotFoundException e) {
            LOGGER.log(Level.SEVERE, "Database driver not found", e);
            return false;
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                LOGGER.log(Level.WARNING, "Error closing database resources", e);
            }
        }
    }
    
    /**
     * Saves the user to the database.
     * 
     * @param user The UserModel object to save
     * @return true if the user was saved successfully, false otherwise
     */
    private boolean saveUserToDatabase(UserModel user) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = DbConfig.getDbConnection();
            
            String sql = "INSERT INTO users (username, password, full_name, email, " +
                         "phone_number, created_at, is_active, role_id) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            
            pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getFullName());
            pstmt.setString(4, user.getEmail());
            pstmt.setString(5, user.getPhoneNumber());
            pstmt.setTimestamp(6, new java.sql.Timestamp(user.getCreatedAt().getTime()));
            pstmt.setBoolean(7, user.getIsActive());
            pstmt.setInt(8, user.getRoleId());
            
            int affectedRows = pstmt.executeUpdate();
            
            if (affectedRows == 0) {
                LOGGER.log(Level.SEVERE, "Creating user failed, no rows affected.");
                return false;
            }
            
            // Get the generated user ID and set it in the user object
            try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    user.setUserId(generatedKeys.getInt(1));
                } else {
                    LOGGER.log(Level.WARNING, "Creating user succeeded but failed to get ID.");
                }
            }
            
            return true;
            
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error saving user to database", e);
            return false;
        } catch (ClassNotFoundException e) {
            LOGGER.log(Level.SEVERE, "Database driver not found", e);
            return false;
        } finally {
            // Close resources
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                LOGGER.log(Level.WARNING, "Error closing database resources", e);
            }
        }
    }
}