<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Portfolio</title>
</head>
<body>
    <div class="container">
        <h1>My Portfolio</h1>
        <div class="profile-card">
            <div class="profile-header">
                <h2>Welcome, <%= session.getAttribute("firstName") %> <%= session.getAttribute("lastName") %></h2>
            </div>
            <div class="profile-details">
                <p><strong>Email:</strong> <%= session.getAttribute("email") %></p>
                <p><strong>Phone:</strong> <%= session.getAttribute("phone") %></p>
                <p><strong>Address:</strong> <%= session.getAttribute("address") %></p>
                <p><strong>Profile Summary:</strong> <%= session.getAttribute("summary") %></p>
            </div>
            <div class="profile-actions">
                <a href="editPortfolio.jsp" class="btn">Edit Profile</a>
                <a href="logout.jsp" class="btn">Logout</a>
            </div>
        </div>
    </div>
</body>
</html>