package com.giftopiaa.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Product entity class representing the product table in the database.
 */
public class productsModel {
    
    // Fields
    private Integer productId;
    private String productName;
    private String description;
    private BigDecimal price;
    private Integer stockQuantity;
    private Date createdAt;
    private Date updatedAt;
    private Boolean isActive;
    
    // Default constructor
    public productsModel() {
        this.stockQuantity = 0;
        this.isActive = true;
        this.createdAt = new Date();
        this.updatedAt = new Date();
    }
    
    // Constructor with required fields
    public productsModel(String productName, BigDecimal price) {
        this();
        this.productName = productName;
        this.price = price;
    }
    
    // Constructor with all fields
    public productsModel(Integer productId, String productName, String description, BigDecimal price, 
                  Integer stockQuantity, Date createdAt, Date updatedAt, Boolean isActive) {
        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.price = price;
        this.stockQuantity = stockQuantity;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.isActive = isActive;
    }

    // Getters and Setters
    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(Integer stockQuantity) {
        this.stockQuantity = stockQuantity;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }
    
    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", stockQuantity=" + stockQuantity +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                ", isActive=" + isActive +
                '}';
    }
}