package com.giftopiaa.model;

import java.util.Date;

/**
 * UserProduct entity class representing the user_product join table in the database.
 * This class manages the relationship between users and products, including purchase status.
 */
public class User_productsModel {
    
    // Enum for status values
    public enum Status {
        Wishlist, Cart, Purchased, Cancelled;
    }
    
    // Fields
    private Integer userProductId;
    private Integer userId;
    private Integer productId;
    private Integer quantity;
    private Date purchaseDate;
    private Status status;
    
    // Default constructor
    public User_productsModel() {
        this.quantity = 1;
        this.purchaseDate = new Date();
    }
    
    // Constructor with required fields
    public User_productsModel(Integer userId, Integer productId, Status status) {
        this();
        this.userId = userId;
        this.productId = productId;
        this.status = status;
    }
    
    // Constructor with all fields
    public User_productsModel(Integer userProductId, Integer userId, Integer productId, 
                      Integer quantity, Date purchaseDate, Status status) {
        this.userProductId = userProductId;
        this.userId = userId;
        this.productId = productId;
        this.quantity = quantity;
        this.purchaseDate = purchaseDate;
        this.status = status;
    }

    // Getters and Setters
    public Integer getUserProductId() {
        return userProductId;
    }

    public void setUserProductId(Integer userProductId) {
        this.userProductId = userProductId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }
    
    // Helper method to convert string to Status enum
    public void setStatusFromString(String statusStr) {
        if (statusStr != null) {
            try {
                this.status = Status.valueOf(statusStr);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid status: " + statusStr);
            }
        }
    }
    
}