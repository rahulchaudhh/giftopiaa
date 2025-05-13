<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giftopia - Contact Us</title>
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/system/favicon.ico" type="image/x-icon">
    <!-- External CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap">
    <!-- Internal CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contactus.css">
</head>
<body>
    <jsp:include page="header.jsp" />
    
    <main class="main-content">
        <!-- Hero Section -->
        <section class="hero-section">
            <div class="hero-overlay"></div>
            <div class="hero-content">
                <h1>Contact <span>Giftopia</span></h1>
                <p>We're here to make your gifting experience exceptional</p>
                <div class="hero-buttons">
                    <a href="tel:+9779817831552" class="primary-btn">
                        <i class="fas fa-phone-alt"></i> +977-9817831552
                    </a>
                    <a href="#contact-form" class="secondary-btn">
                        <i class="fas fa-envelope"></i> Message Us
                    </a>
                </div>
            </div>
        </section>

        <!-- Contact Info Section -->
        <section class="contact-section">
            <div class="container">
                <div class="section-header">
                    <span class="section-subtitle">Get in Touch</span>
                    <h2 class="section-title">We'd Love to Hear From You</h2>
                    <p class="section-description">Whether you have a question about your order, need gift suggestions, or want to share your experience, our team is ready to assist.</p>
                </div>
                
                <div class="contact-container">
                    <!-- Contact Info Cards -->
                    <div class="contact-info">
                        <div class="info-card">
                            <div class="card-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="card-content">
                                <h3>Visit Our Store</h3>
                                <p>Kathmandu, Nepal</p>
                                <a href="#" class="info-link">Get Directions <i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                        
                        <div class="info-card">
                            <div class="card-icon">
                                <i class="fas fa-phone-alt"></i>
                            </div>
                            <div class="card-content">
                                <h3>Call Us</h3>
                                <p>Customer Service: +977-9817831552</p>
                                <a href="tel:+9779817831552" class="info-link">Call Now <i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                        
                        <div class="info-card">
                            <div class="card-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="card-content">
                                <h3>Email Us</h3>
                                <p>Customer Care: care@giftopia.com</p>
                                <p>Business Inquiries: business@giftopia.com</p>
                                <a href="mailto:care@giftopia.com" class="info-link">Send Email <i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                        
                        <div class="info-card">
                            <div class="card-icon">
                                <i class="fas fa-clock"></i>
                            </div>
                            <div class="card-content">
                                <h3>Business Hours</h3>
                                <p>Monday-Saturday: 9AM-8PM</p>
                                <p>Sunday: 10AM-6PM</p>
                                <a href="#" class="info-link">Holiday Hours <i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Form -->
                    <div class="contact-form-container" id="contact-form">
                        <div class="form-header">
                            <h2>Send Us a Message</h2>
                            <p>We typically respond within 24 hours</p>
                        </div>
                        
                        <form action="${pageContext.request.contextPath}/contact" method="POST" class="contact-form">
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="name">Full Name</label>
                                    <div class="input-group">
                                        <span class="input-icon"><i class="fas fa-user"></i></span>
                                        <input type="text" id="name" name="name" placeholder="Your name" maxlength="100" required>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="email">Email Address</label>
                                    <div class="input-group">
                                        <span class="input-icon"><i class="fas fa-envelope"></i></span>
                                        <input type="email" id="email" name="email" placeholder="Your email" maxlength="100" required>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="phone">Phone Number (Optional)</label>
                                    <div class="input-group">
                                        <span class="input-icon"><i class="fas fa-phone"></i></span>
                                        <input type="tel" id="phone" name="phone" placeholder="Your phone number">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="subject">Subject</label>
                                    <div class="input-group">
                                        <span class="input-icon"><i class="fas fa-tag"></i></span>
                                        <select id="subject" name="subject" required>
                                            <option value="">Select a subject</option>
                                            <option value="Order">Order Inquiry</option>
                                            <option value="Delivery">Delivery Question</option>
                                            <option value="Product">Product Question</option>
                                            <option value="Return">Return/Exchange</option>
                                            <option value="General">General Question</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="message">Your Message</label>
                                <div class="input-group textarea-group">
                                    <span class="input-icon"><i class="fas fa-comment-alt"></i></span>
                                    <textarea id="message" name="message" placeholder="How can we help you?" required></textarea>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="checkbox-group">
                                    <input type="checkbox" id="newsletter" name="newsletter">
                                    <label for="newsletter">Subscribe to our newsletter for exclusive offers and updates</label>
                                </div>
                            </div>
                            
                            <button type="submit" class="submit-button">
                                <span>Send Message</span>
                                <i class="fas fa-paper-plane"></i>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Social Media Section -->
        <section class="social-section">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title">Connect With Us</h2>
                    <p class="section-description">Follow us on social media for gift inspiration, special offers, and more</p>
                </div>
                
                <div class="social-icons">
                    <a href="#" class="social-icon facebook">
                        <i class="fab fa-facebook-f"></i>
                        <span>Facebook</span>
                    </a>
                    <a href="#" class="social-icon instagram">
                        <i class="fab fa-instagram"></i>
                        <span>Instagram</span>
                    </a>
                    <a href="#" class="social-icon pinterest">
                        <i class="fab fa-pinterest-p"></i>
                        <span>Pinterest</span>
                    </a>
                    <a href="#" class="social-icon twitter">
                        <i class="fab fa-twitter"></i>
                        <span>Twitter</span>
                    </a>
                </div>
            </div>
        </section>
        
        <!-- FAQ Section -->
        <section class="faq-section">
            <div class="container">
                <div class="section-header">
                    <span class="section-subtitle">Frequently Asked Questions</span>
                    <h2 class="section-title">Common Questions</h2>
                </div>
                
                <div class="faq-container">
                    <div class="faq-item">
                        <div class="faq-question">
                            <h3>How can I track my order?</h3>
                            <span class="faq-icon"><i class="fas fa-chevron-down"></i></span>
                        </div>
                        <div class="faq-answer">
                            <p>You can track your order by logging into your account and navigating to the "My Orders" section. Alternatively, use the tracking number provided in your shipping confirmation email.</p>
                        </div>
                    </div>
                    
                    <div class="faq-item">
                        <div class="faq-question">
                            <h3>What is your return policy?</h3>
                            <span class="faq-icon"><i class="fas fa-chevron-down"></i></span>
                        </div>
                        <div class="faq-answer">
                            <p>We offer a 30-day return policy for most items. Products must be in their original condition with all packaging. Some personalized items may not be eligible for return.</p>
                        </div>
                    </div>
                    
                    <div class="faq-item">
                        <div class="faq-question">
                            <h3>Do you offer gift wrapping services?</h3>
                            <span class="faq-icon"><i class="fas fa-chevron-down"></i></span>
                        </div>
                        <div class="faq-answer">
                            <p>Yes, we offer premium gift wrapping services for all our products. You can select this option during checkout for a small additional fee.</p>
                        </div>
                    </div>
                    
                    <div class="faq-item">
                        <div class="faq-question">
                            <h3>How do I request a corporate gift order?</h3>
                            <span class="faq-icon"><i class="fas fa-chevron-down"></i></span>
                        </div>
                        <div class="faq-answer">
                            <p>For corporate orders, please email business@giftopia.com with your requirements. Our corporate team will assist you with bulk orders, custom branding options, and special pricing.</p>
                        </div>
                    </div>
                </div>
                
                <div class="more-questions">
                    <p>Still have questions? Contact our customer service team</p>
                    <a href="tel:+9779817831552" class="contact-btn">
                        <i class="fas fa-phone-alt"></i> +977-9817831552
                    </a>
                </div>
            </div>
        </section>
    </main>

    <jsp:include page="footer.jsp" />
    
    <!-- JavaScript -->
    <script src="${pageContext.request.contextPath}/js/contact-form-validation.js"></script>
    <script>
        // FAQ Accordion
        document.querySelectorAll('.faq-question').forEach(question => {
            question.addEventListener('click', () => {
                const item = question.parentNode;
                item.classList.toggle('active');
            });
        });
    </script>
</body>
</html>