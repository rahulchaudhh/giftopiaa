<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <style>
        /* Modern Header Styles */
        .header-container {
            background: linear-gradient(135deg, #ffffff 0%, #f9f9f9 100%);
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
            position: sticky;
            top: 0;
            z-index: 1000;
            font-family: 'Segoe UI', Roboto, sans-serif;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        .top-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
            flex-wrap: wrap;
            gap: 20px;
        }
        
        .branding {
            display: flex;
            align-items: center;
            gap: 15px;
        }
        
        .logo-image {
            width: 70px;
            height: 70px;
        }
        
        .brand-text {
            display: flex;
            flex-direction: column;
        }
        
        .logo-title {
            font-size: 2.2rem;
            margin: 0;
            color: #e74c3c;
            font-weight: 700;
            letter-spacing: -0.5px;
        }
        
        .tagline {
            font-size: 1rem;
            color: #7f8c8d;
            margin: 5px 0 0;
            font-weight: 400;
        }
        
        /* Search Section */
        .search-section {
            display: flex;
            flex-direction: column;
            gap: 15px;
            align-items: flex-end;
        }
        
        .search-bar {
            display: flex;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            border-radius: 30px;
            overflow: hidden;
        }
        
        .search-bar input {
            padding: 12px 20px;
            width: 300px;
            border: none;
            outline: none;
            font-size: 0.95rem;
        }
        
        .search-btn {
            padding: 0 25px;
            background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
            color: white;
            border: none;
            cursor: pointer;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: all 0.3s ease;
        }
        
        .search-btn:hover {
            background: linear-gradient(135deg, #c0392b 0%, #a53125 100%);
        }
        
        /* Quick Actions */
        .quick-actions {
            display: flex;
            gap: 25px;
        }
        
        .action-link {
            color: #34495e;
            text-decoration: none;
            font-size: 0.9rem;
            font-weight: 500;
            transition: color 0.2s ease;
            display: flex;
            align-items: center;
            gap: 5px;
        }
        
        .action-link:hover {
            color: #e74c3c;
        }
        
        /* Main Navigation */
        .main-nav {
            display: flex;
            justify-content: center;
            padding: 15px 0;
            border-top: 1px solid rgba(0,0,0,0.05);
            border-bottom: 1px solid rgba(0,0,0,0.05);
            background: rgba(255,255,255,0.8);
        }
        
        .nav-link {
            margin: 0 25px;
            color: #2c3e50;
            text-decoration: none;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.85rem;
            letter-spacing: 0.5px;
            padding: 8px 0;
            border-bottom: 2px solid transparent;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .nav-link:hover, .nav-link.active {
            color: #e74c3c;
            border-bottom-color: #e74c3c;
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            .top-header {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }
            
            .branding {
                flex-direction: column;
                align-items: center;
            }
            
            .search-section {
                align-items: center;
                width: 100%;
            }
            
            .search-bar input {
                width: 100%;
            }
            
            .quick-actions {
                justify-content: center;
                width: 100%;
            }
            
            .main-nav {
                flex-wrap: wrap;
            }
            
            .nav-link {
                margin: 5px 15px;
            }
        }
    </style>
</head>
<body>
    <header class="header-container">
        <div class="container">
            <!-- Top Header Section -->
            <div class="top-header">
                <div class="branding">
                    <img src="${pageContext.request.contextPath}/resources/images/system/logoo.jpg" alt="Giftopia Logo" class="logo-image">
                    <div class="brand-text">
                        <h1 class="logo-title">Giftopia</h1>
                        <p class="tagline">where every gifts tell a stroy</p>
                    </div>
                </div>
                
                <div class="search-section">
                    <div class="search-bar">
                        <input type="text" placeholder="Search for products">
                        <button class="search-btn">
                            <i class="fas fa-search"></i> Search
                        </button>
                    </div>
                    
                    <div class="quick-actions">
                        <a href="#" class="action-link">SELECT CATEGORY</a>
                        <a href="${pageContext.request.contextPath}/login" class="action-link">LOGIN / REGISTER</a>
                    </div>
                </div>
            </div>
            
            <!-- Main Navigation -->
            <nav class="main-nav">
                <a href="${pageContext.request.contextPath}/" class="nav-link active">
                    <i class="fas fa-home"></i> HOME
                </a>
               <a href="${pageContext.request.contextPath}/products"class="nav-link">
                    <i class="fas fa-info-circle"></i> products
</a>
                <a href="${pageContext.request.contextPath}/aboutus" class="nav-link">
                    <i class="fas fa-info-circle"></i> ABOUT US
                </a>
                <a href="${pageContext.request.contextPath}/contact" class="nav-link">
                    <i class="fas fa-envelope"></i> CONTACT US
                </a>
                 <a href="${pageContext.request.contextPath}/portfolio" class="nav-link">
                    <i class="fas fa-envelope"></i> PORTFOLIO
                </a>
                
                
            </nav>
        </div>
    </header>
</body>
</html>