<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About Us - YourKoseli</title>
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/system/favicon.ico" type="image/x-icon">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Footer CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/aboutus.css" />
</head>
<body>
    <jsp:include page="header.jsp" />

    <main class="about-container">
        <section class="hero-banner">
            <div class="overlay"></div>
            <img src="${pageContext.request.contextPath}/resources/images/system/about.jpg" alt="About Us Banner">
            <div class="hero-content">
                <h1>About Us</h1>
                <p class="tagline">Bringing Happiness, One Celebration at a Time</p>
                <div class="scroll-indicator">
                    <i class="fas fa-chevron-down"></i>
                </div>
            </div>
        </section>

        <section class="mission-section">
            <div class="container">
                <div class="mission-content">
                    <span class="subtitle">Our Mission</span>
                    <h2>Celebrating Life's Special Moments</h2>
                    <p>Your Celebrations is an attempt to promote Happy Living and Living Life to the fullest. We believe life is not just to live, it is to celebrate as well.</p>
                </div>
            </div>
        </section>

        <section class="story-section">
            <div class="container">
                <div class="two-column">
                    <div class="column-left">
                        <span class="subtitle">Our Story</span>
                        <h2>A Journey of Joy & Celebration</h2>
                        <p class="highlighted">For over a year, our gift store has been a cherished destination for those looking to celebrate life's special moments with thoughtfully curated treasures.</p>
                        <p>Inspired by the rich traditions of our region, our founder Rahul Chaudhary envisioned a space where unique and heartfelt gifts could bring joy to every occasion.</p>
                        <p>From our humble beginnings as a small shop, we've grown into a beloved destination that showcases the finest crafts, gifts, and keepsakes. Every item in our collection is chosen with care, reflecting the creativity and dedication of artisans both locally and beyond.</p>
                    </div>
                    <div class="column-right">
                        <div class="image-frame">
                            <img src="${pageContext.request.contextPath}/resources/images/system/gs.jpg" alt="Our Store" class="about-image">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="values-section">
            <div class="container">
                <span class="subtitle">Our Core Values</span>
                <h2>What Sets Us Apart</h2>
                <div class="values-grid">
                    <div class="value-card">
                        <div class="icon-container">
                            <i class="fas fa-heart"></i>
                        </div>
                        <h3>Quality & Craftsmanship</h3>
                        <p>At the heart of our store is a commitment to quality, authenticity, and community. We take pride in partnering with local artisans.</p>
                    </div>
                    
                    <div class="value-card">
                        <div class="icon-container">
                            <i class="fas fa-users"></i>
                        </div>
                        <h3>Community Focus</h3>
                        <p>We believe in spreading happiness through thoughtful moments and building stronger community connections.</p>
                    </div>
                    
                    <div class="value-card">
                        <div class="icon-container">
                            <i class="fas fa-gift"></i>
                        </div>
                        <h3>Thoughtful Curation</h3>
                        <p>Every gift in our collection tells a story of tradition, craftsmanship, and love.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="why-section">
            <div class="container">
                <div class="two-column reverse">
                    <div class="column-left">
                        <div class="image-collage">
                            <img src="${pageContext.request.contextPath}/resources/images/system/cele.jpg" alt="Celebration" class="collage-img img-1">
                            <img src="${pageContext.request.contextPath}/resources/images/system/cele3.jpg" alt="Gift giving" class="collage-img img-2">
                      
                        </div>
                    </div>
                    <div class="column-right">
                        <span class="subtitle">Our Purpose</span>
                        <h2>Why Did We Start?</h2>
                        <p>Everyone talks about infrastructure and development, but not enough about the happiness index. Happiness is what truly matters. We began this journey because:</p>
                        <ul class="benefits-list">
                            <li>
                                <i class="fas fa-heart"></i>
                                <div>
                                    <h4>Mental Well-being</h4>
                                    <p>Celebration helps improve mental health and overall happiness</p>
                                </div>
                            </li>
                            <li>
                                <i class="fas fa-users"></i>
                                <div>
                                    <h4>Human Connection</h4>
                                    <p>We believe in spreading happiness through thoughtful moments</p>
                                </div>
                            </li>
                            <li>
                                <i class="fas fa-gift"></i>
                                <div>
                                    <h4>Creating Memories</h4>
                                    <p>Gifting and celebrating bring people together and create lasting memories</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="cta-section">
            <div class="container">
                <div class="cta-content">
                    <h2>Join Us in Celebrating Life</h2>
                    <p>Visit our store or browse online to discover the perfect gifts for your special moments.</p>
                    <a href="${pageContext.request.contextPath}/shop" class="cta-button">Explore Our Collection</a>
                </div>
            </div>
        </section>
    </main>

    <jsp:include page="footer.jsp" />

    <!-- JavaScript -->
    <script src="${pageContext.request.contextPath}/js/animations.js"></script>
    <script>
        // Smooth scroll for scroll indicator
        document.querySelector('.scroll-indicator').addEventListener('click', function() {
            document.querySelector('.mission-section').scrollIntoView({ 
                behavior: 'smooth' 
            });
        });
        
        // Animation for elements when they come into view
        document.addEventListener('DOMContentLoaded', function() {
            const animatedElements = document.querySelectorAll('.mission-content, .two-column, .values-grid, .cta-content');
            
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animate');
                    }
                });
            }, { threshold: 0.1 });
            
            animatedElements.forEach(element => {
                observer.observe(element);
            });
        });
    </script>
</body>
</html>