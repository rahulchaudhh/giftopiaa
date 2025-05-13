<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giftopia - Footer with Logout</title>
    <!-- Font Awesome for icons if needed -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Light and Beautiful Gift Store Footer */
        .gift-footer {
            background: #fff9f7; /* Very soft peach */
            color: #6d4c41; /* Warm medium brown */
            padding: 40px 0 20px;
            font-family: 'Poppins', sans-serif;
            border-top: 1px solid #ffd8c9; /* Soft peach border */
        }
        
        .footer-container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        .footer-columns {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 40px;
            margin-bottom: 30px;
        }
        
        .footer-col {
            padding: 0 10px;
        }
        
        .footer-title {
            color: #e53935; /* Warm red accent */
            font-size: 1.1rem;
            margin-bottom: 20px;
            font-weight: 500;
            letter-spacing: 0.5px;
        }
        
        .footer-links {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }
        
        .footer-links a {
            color: #6d4c41;
            text-decoration: none;
            transition: all 0.3s ease;
            font-size: 0.9rem;
        }
        
        .footer-links a:hover {
            color: #e53935;
            padding-left: 5px;
        }
        
        .newsletter {
            margin-top: 10px;
        }
        
        .newsletter p {
            margin-bottom: 15px;
            font-size: 0.9rem;
            color: #6d4c41;
        }
        
        .newsletter-form {
            display: flex;
            max-width: 280px;
        }
        
        .newsletter-form input {
            padding: 10px 15px;
            border: 1px solid #ffccbc;
            border-radius: 4px 0 0 4px;
            flex: 1;
            font-size: 0.9rem;
            background: #fff;
            color: #5d4037;
        }
        
        .newsletter-form button {
            padding: 10px 15px;
            background: #e53935;
            color: white;
            border: none;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
            font-size: 0.9rem;
            transition: background 0.3s ease;
            /* Ensure button is fully red and matches the rounded shape */
            margin: 0;
            box-sizing: border-box;
        }
        
        .newsletter-form button:hover {
            background: #c62828;
        }
        
        .footer-bottom {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 15px; /* Space between copyright text and logout button */
            padding-top: 10px; /* Reduced from 30px to bring logout button down */
            border-top: 1px solid #ffd8c9;
            margin-top: 20px;
        }
        
        .copyright {
            font-size: 0.85rem;
            color: #8d6e63;
        }
        
        .logout-btn {
            background: #d3d3d3; /* Gray background to match the image */
            color: #333;
            font-size: 0.85rem;
            font-weight: 600;
            text-transform: uppercase;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
            transition: background 0.3s ease;
        }
        
        .logout-btn:hover {
            background: #c0c0c0; /* Slightly darker gray on hover */
        }
        
        /* Font Import */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
    </style>
</head>
<body>
    <!-- Footer Section -->
    <div id="footer" class="gift-footer">
        <div class="footer-container">
            <div class="footer-columns">
                <!-- Quick Links Column -->
                <div class="footer-col">
                    <h4 class="footer-title">Quick Links</h4>
                    <div class="footer-links">
                        <a href="${pageContext.request.contextPath}/">Home</a>
                        <a href="${pageContext.request.contextPath}/products">Products</a>
                        <a href="${pageContext.request.contextPath}/about">About Us</a>
                        <a href="${pageContext.request.contextPath}/contact">Contact</a>
                        <a href="${pageContext.request.contextPath}/faq">FAQ</a>
                    </div>
                </div>
                
                <!-- Customer Service Column -->
                <div class="footer-col">
                    <h4 class="footer-title">Customer Service</h4>
                    <div class="footer-links">
                        <a href="#">Shipping Policy</a>
                        <a href="#">Return Policy</a>
                        <a href="#">Privacy Policy</a>
                        <a href="#">Terms & Conditions</a>
                    </div>
                </div>
                
                <!-- Newsletter Column -->
                <div class="footer-col">
                    <h4 class="footer-title">Stay Connected</h4>
                    <div class="newsletter">
                        <p>Subscribe to our newsletter</p>
                        <form class="newsletter-form">
                            <input type="email" placeholder="Your email address" required>
                            <button type="submit">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p class="copyright">© 2025 Giftopia Gift Store. All rights reserved.</p>
                <a href="${pageContext.request.contextPath}/logout" class="logout-btn">Logout</a>
            </div>
        </div>
    </div>
</body>
</html>