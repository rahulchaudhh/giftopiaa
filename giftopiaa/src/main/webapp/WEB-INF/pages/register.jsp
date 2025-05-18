<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register - Gift Haven</title>
<!-- Favicon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/system/favicon.ico"
	type="image/x-icon">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/register.css">
</head>
<body>




	<form action="${pageContext.request.contextPath}/register"
		method="post">


		<!-- Heading and Subheading -->
		<h1>Create Your Gift Haven Account</h1>
		<p class="subtitle">Join our community to receive exclusive offers
			and gift ideas</p>
			 <% if (request.getAttribute("error") != null) { %>
        <p class="error-message"><i class="fas fa-exclamation-circle"></i> <%= request.getAttribute("error") %></p>
        <% } %>
        <% if (request.getParameter("success") != null) { %>
        <p class="success-message"><i class="fas fa-check-circle"></i> <%= request.getParameter("success") %></p>
        <% } %>

		<!-- Full Name -->
		<div class="form-group">
			<label for="full_name">Full Name</label> <i
				class="fas fa-user input-icon"></i> <input type="text"
				id="full_name" name="fullName" required>
		</div>

		<!-- Username -->
		<div class="form-group">
			<label for="username">Username</label> <i
				class="fas fa-gift input-icon"></i> <input type="text" id="username"
				name="username" required>
		</div>

		<!-- Field validation tooltip -->
		<div class="validation-tooltip" id="username-tooltip"
			style="display: none;">
			<i class="fas fa-exclamation-circle"></i> Please fill out this field.
		</div>

		<!-- Password Row -->
		<div class="form-row">
			<div class="form-group">
				<label for="password">Password</label> <i
					class="fas fa-lock input-icon"></i> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="confirm_password">Confirm Password</label> <i
					class="fas fa-lock input-icon"></i> <input type="password"
					id="confirm_password" name="confirmPassword" required>
			</div>
		</div>

		<!-- Email/Phone Row -->
		<div class="form-row">
			<div class="form-group">
				<label for="email">Email Address</label> <i
					class="fas fa-envelope input-icon"></i> <input type="email"
					id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone Number</label> <i
					class="fas fa-phone input-icon"></i> <input type="tel" id="phone"
					name="phoneNumber" value="+1234567890" required>
			</div>
		</div>

		<!-- Password Error Message -->
		<div class="password-error" id="password-error" style="display: none;">
			Credentials doesn't match</div>

		<!-- Membership -->
		<div class="form-group">
			<label for="membership">Membership Type</label> <i
				class="fas fa-crown input-icon"></i> <select id="membership"
				name="membership" required>
				<option value="">Select your membership</option>
				<option value="1">Standard Member</option>
				<option value="2">Premium Collector</option>
				<option value="3">Gift Connoisseur</option>
			</select>
		</div>

		<!-- Newsletter -->
		<div class="checkbox-group">
			<input type="checkbox" id="newsletter" name="newsletter" checked>
			<label for="newsletter">Subscribe to our newsletter for gift
				ideas and special offers</label>
		</div>

		<!-- Submit Button -->
		<button type="submit" class="submit-btn">
			<span>Create Account</span> <i class="fas fa-arrow-right"></i>
		</button>

		<!-- Divider -->
		<div class="divider">or sign up with</div>

		<!-- Social Buttons -->
		<div class="social-buttons">
			<button type="button" class="social-btn facebook-btn">
				<i class="fab fa-facebook-f"></i> <span>Facebook</span>
			</button>
			<button type="button" class="social-btn google-btn">
				<i class="fab fa-google"></i> <span>Google</span>
			</button>
		</div>

		<!-- Login Link -->
		<div class="login-link">
			Already have an account? <a href="#">Sign in</a>
		</div>
	</form>

	<script>
        // Password validation
        const passwordField = document.getElementById('password');
        const confirmPasswordField = document.getElementById('confirm_password');
        const passwordError = document.getElementById('password-error');
        function validatePassword() {
            if (passwordField.value && confirmPasswordField.value) {
                if (passwordField.value !== confirmPasswordField.value) {
                    passwordError.style.display = 'block';
                } else {
                    passwordError.style.display = 'none';
                }
            } else {
                passwordError.style.display = 'none';
            }
        }
        
        passwordField.addEventListener('input', validatePassword);
        confirmPasswordField.addEventListener('input', validatePassword);
        
        // Form field validation tooltip
        document.querySelectorAll('input[required], select[required]').forEach(field => {
            field.addEventListener('invalid', function(e) {
                e.preventDefault();
                // Only show for username field in this example to match the image
                if (field.id === 'username') {
                    document.getElementById('username-tooltip').style.display = 'flex';
                    
                    // Hide after 3 seconds
                    setTimeout(() => {
                        document.getElementById('username-tooltip').style.display = 'none';
                    }, 3000);
                }
            });
        });
    </script>
</body>
</html>