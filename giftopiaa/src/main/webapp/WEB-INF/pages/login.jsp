<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gift Haven - Login</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            color: #333;
        }
        
        .login-container {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            padding: 40px;
            width: 100%;
            max-width: 420px;
            text-align: center;
        }
        
        .logo-container {
            margin-bottom: 24px;
        }
        
        .logo-container img {
            height: 60px;
        }
        
        h1 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 8px;
            color: #2c3e50;
        }
        
        .subtitle {
            font-size: 14px;
            color: #7f8c8d;
            margin-bottom: 24px;
        }
        
        .form-group {
            margin-bottom: 16px;
            text-align: left;
        }
        
        .form-group label {
            display: block;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 6px;
            color: #2c3e50;
        }
        
        .cute-input {
            width: 100%;
            padding: 12px 16px;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            font-size: 14px;
            transition: border-color 0.3s;
            box-sizing: border-box;
        }
        
        .cute-input:focus {
            outline: none;
            border-color: #ff6b8b;
        }
        
        .input-with-icon {
            position: relative;
        }
        
        .input-with-icon i {
            position: absolute;
            left: 14px;
            top: 50%;
            transform: translateY(-50%);
            color: #95a5a6;
        }
        
        .input-with-icon input {
            padding-left: 40px !important;
        }
        
        .toggle-password {
            position: absolute;
            right: 14px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            color: #95a5a6;
        }
        
        .form-options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 16px 0 24px;
            font-size: 14px;
        }
        
        .remember-me {
            display: flex;
            align-items: center;
        }
        
        .cute-checkbox {
            margin-right: 8px;
            accent-color: #ff6b8b;
        }
        
        .forgot-password a {
            color: #ff6b8b;
            text-decoration: none;
        }
        
        .btn-login {
            width: 100%;
            padding: 14px;
            background-color: #ff6b8b;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        .btn-login:hover {
            background-color: #ff5573;
        }
        
        .divider {
            display: flex;
            align-items: center;
            margin: 24px 0;
            color: #95a5a6;
            font-size: 14px;
        }
        
        .divider::before,
        .divider::after {
            content: "";
            flex: 1;
            border-bottom: 1px solid #e0e0e0;
        }
        
        .divider::before {
            margin-right: 16px;
        }
        
        .divider::after {
            margin-left: 16px;
        }
        
        .social-media {
            display: flex;
            gap: 12px;
            margin-bottom: 24px;
        }
        
        .social-btn {
            flex: 1;
            padding: 12px;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 500;
            text-decoration: none;
            color: #2c3e50;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s;
        }
        
        .social-btn i {
            margin-right: 8px;
        }
        
        .social-btn.google:hover {
            background-color: #f8f9fa;
        }
        
        .social-btn.facebook {
            background-color: #3b5998;
            color: white;
            border-color: #3b5998;
        }
        
        .social-btn.facebook:hover {
            background-color: #344e86;
        }
        
        .register-link {
            font-size: 14px;
            color: #7f8c8d;
        }
        
        .register-link a {
            color: #ff6b8b;
            text-decoration: none;
            font-weight: 500;
        }
        
        .error-message {
            color: #e74c3c;
            font-size: 14px;
            margin-bottom: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .error-message i {
            margin-right: 8px;
        }
        
        .success-message {
            color: #27ae60;
            font-size: 14px;
            margin-bottom: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .success-message i {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="logo-container">
            <img src="${pageContext.request.contextPath}/resources/images/system/loginlogoo.jpg" alt="Gift Haven Logo">
        </div>
        
        <h1>Welcome Back!</h1>
        <p class="subtitle">Sign in to your Gift shop account</p>
        
        <% if (request.getAttribute("error") != null) { %>
        <p class="error-message"><i class="fas fa-exclamation-circle"></i> <%= request.getAttribute("error") %></p>
        <% } %>
        <% if (request.getParameter("success") != null) { %>
        <p class="success-message"><i class="fas fa-check-circle"></i> <%= request.getParameter("success") %></p>
        <% } %>
        
        <form action="${pageContext.request.contextPath}/login" method="post" class="cute-form">
            <div class="form-group">
                <label for="username">Usename</label>
                <div class="input-with-icon">
                    <i class="fas fa-envelope"></i>
                    <input type="text" id="username" name="username" placeholder="enter your username" maxlength="50" required class="cute-input">
                </div>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <div class="input-with-icon">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="password" name="password" placeholder="••••••••" maxlength="255" required class="cute-input">
                    <i class="fas fa-eye toggle-password"></i>
                </div>
            </div>
            
            <div class="form-options">
                <div class="remember-me">
                    <input type="checkbox" id="remember" name="remember" class="cute-checkbox">
                    <label for="remember">Remember me</label>
                </div>
                <div class="forgot-password">
                    <a href="#">Forgot Password?</a>
                </div>
            </div>
            
            <button type="submit" class="btn-login">
                Sign In
            </button>
            
            <div class="divider">
                <span>or continue with</span>
            </div>
            
            <div class="social-media">
                <a href="#" class="social-btn google"><i class="fab fa-google"></i> Google</a>
                <a href="#" class="social-btn facebook"><i class="fab fa-facebook-f"></i> Facebook</a>
            </div>
            
            <div class="register-link">
                New to Gift Haven? <a href="${pageContext.request.contextPath}/register">Create an account</a>
            </div>
        </form>
    </div>
    
    <script>
        // Toggle password visibility
        document.querySelector('.toggle-password').addEventListener('click', function() {
            const passwordInput = document.getElementById('password');
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.classList.toggle('fa-eye-slash');
        });
    </script>
</body>
</html>