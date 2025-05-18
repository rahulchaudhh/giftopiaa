<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gift Shop - Edit Profile</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/editProfile.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/portfolio.css">
</head>
<body>

    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <div class="profile-edit-container">
        <div class="profile-edit-card">
            <h2>Edit Profile</h2>
            
            <form action="updateProfile" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" name="fullName" value="${sessionScope.user.fullName}" class="form-control">
                </div>
                
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" value="${sessionScope.user.email}" class="form-control">
                </div>
                
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" value="${sessionScope.user.phoneNumber}" class="form-control">
                </div>
                
                <div class="form-group">
                    <label>Current Photo</label>
                    <div class="current-photo">
                     <img src="${pageContext.request.contextPath}/resources/images/system/rc005405.jpg" alt="" class="about-image">
                        
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="profilePhoto">Change Profile Photo</label>
                    <div class="file-input-wrapper">
                        <input type="file" id="profilePhoto" name="profilePhoto" accept="image/*" class="file-input">
                        <div class="file-input-info">No file chosen</div>
                    </div>
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn btn-save"><i class="fas fa-save"></i> Save Changes</button>
                    <button type="reset" class="btn btn-reset"><i class="fas fa-undo"></i> Reset</button>
                </div>
            </form>
            
            <div class="back-link">
                <a href="login.jsp"><i class=""></i> Logout</a>
            </div>
        </div>
    </div>

    <!-- Include Footer -->
    <jsp:include page="footer.jsp" />

    <script>
        // Display file name when a file is selected
        document.getElementById('profilePhoto').addEventListener('change', function() {
            const fileInfo = document.querySelector('.file-input-info');
            if (this.files.length > 0) {
                fileInfo.textContent = this.files[0].name;
            } else {
                fileInfo.textContent = 'No file chosen';
            }
        });
    </script>
</body>
</html>