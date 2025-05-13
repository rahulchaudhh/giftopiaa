package com.giftopiaa.model;

import java.util.Date;

/**
 * User entity class representing the user table in the database.
 */
public class UserModel {
    
    public UserModel(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	// Fields
    private Integer userId;
    private String username;
    private String password;
    private String fullName;
    private String email;
    private String phoneNumber;
    private Date lastLogin;
    private Date createdAt;
    private Boolean isActive;
    private Integer roleId;
    
    // Default constructor
    public UserModel() {
        this.isActive = true;
        this.createdAt = new Date();
    }
    
    // Constructor with required fields
    public UserModel(String username, String password, String fullName, String email, Integer roleId) {
        this();
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.roleId = roleId;
    }
    
    // Constructor with all fields
    public UserModel(Integer userId, String username, String password, String fullName, 
                String email, String phoneNumber, Date lastLogin, Date createdAt, 
                Boolean isActive, Integer roleId) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.lastLogin = lastLogin;
        this.createdAt = createdAt;
        this.isActive = isActive;
        this.roleId = roleId;
    }

    // Getters and Setters
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
    
    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", password='[PROTECTED]'" +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", lastLogin=" + lastLogin +
                ", createdAt=" + createdAt +
                ", isActive=" + isActive +
                ", roleId=" + roleId +
                '}';
    }
    
    // For security reasons, we don't include the password in toString
    // Note that in a real application, you would want to add password hashing
    // and additional security measures
}