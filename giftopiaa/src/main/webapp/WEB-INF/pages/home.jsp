<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gift Store - YourKoseli</title>
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/system/favicon.ico" type="image/x-icon">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700&family=Pacifico&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css">
</head>
<body>
    <jsp:include page="header.jsp"/>
    
    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-content">
            <h1>Every moment <span class="highlight">deserves</span> a celebration</h1>
            <p>Discover unique gifts that tell your story</p>
            <div class="cta-container">
                <a href="${pageContext.request.contextPath}/products">Shop Now</a>
                <a href="${pageContext.request.contextPath}/aboutus">Our Story</a>
            </div>
        </div>
        <div class="hero-image-container">
            <div class="shape-1"></div>
            <div class="shape-2"></div>
         
            <div class="floating-icon gift"><i class="fas fa-gift"></i></div>
            <div class="floating-icon heart"><i class="fas fa-heart"></i></div>
            <div class="floating-icon star"><i class="fas fa-star"></i></div>
        </div>
    </section>
    
    <!-- Categories Section -->
    <section class="categories-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Browse by Category</h2>
                <div class="squiggle"></div>
                <p class="section-subtitle">Find the perfect gift for any occasion</p>
            </div>
            
            <div class="category-grid">
                <a href="products.jsp?category=flowers" class="category-card">
                    <div class="category-icon"><i class="fas fa-flower"></i></div>
                    <div class="category-img-container">
                        <img src="${pageContext.request.contextPath}/resources/images/system/FlowerBouquets.jpg" alt="Flowers">
                    </div>
                    <h3>Flower Bouquets</h3>
                    <p>Beautiful arrangements for all occasions</p>
                    <div class="hover-indicator"><i class="fas fa-arrow-right"></i></div>
                </a>
                
                <a href="products.jsp?category=teddy" class="category-card">
                    <div class="category-icon"><i class="fas fa-teddy-bear"></i></div>
                    <div class="category-img-container">
                        <img src="${pageContext.request.contextPath}/resources/images/system/teddy.jpg" alt="Teddy Bears">
                    </div>
                    <h3>Teddy Bears</h3>
                    <p>Cuddly companions for your loved ones</p>
                    <div class="hover-indicator"><i class="fas fa-arrow-right"></i></div>
                </a>
                
                <a href="products.jsp?category=cakes" class="category-card">
                    <div class="category-icon"><i class="fas fa-birthday-cake"></i></div>
                    <div class="category-img-container">
                        <img src="${pageContext.request.contextPath}/resources/images/system/cake.jpg" alt="Cakes">
                    </div>
                    <h3>Delicious Cakes</h3>
                    <p>Sweet treats for celebrations</p>
                    <div class="hover-indicator"><i class="fas fa-arrow-right"></i></div>
                </a>
                
                <a href="products.jsp?category=combos" class="category-card">
                    <div class="category-icon"><i class="fas fa-box-open"></i></div>
                    <div class="category-img-container">
                        <img src="${pageContext.request.contextPath}/resources/images/system/gift-combo.jpg" alt="Gift Combos">
                    </div>
                    <h3>Gift Combos</h3>
                    <p>Curated combinations for maximum joy</p>
                    <div class="hover-indicator"><i class="fas fa-arrow-right"></i></div>
                </a>
            </div>
        </div>
    </section>
    
    <!-- Featured Collections -->
    <section class="featured-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Featured Collections</h2>
                <div class="squiggle"></div>
                <p class="section-subtitle">Handpicked selections to make their day special</p>
            </div>
            
            <div class="featured-tabs">
                <div class="tab-headers">
                    <button class="tab-btn active" data-tab="bestsellers">Best Sellers</button>
                    <button class="tab-btn" data-tab="new-arrivals">New Arrivals</button>
                    <button class="tab-btn" data-tab="trending">Trending Now</button>
                </div>
                
                <div class="tab-content">
                    <div class="tab-pane active" id="bestsellers">
                        <div class="product-grid">
                            <!-- Product cards will be dynamically loaded -->
                            <div class="product-card">
                                <div class="product-badge">Top Rated</div>
                                <div class="product-image">
                                    <img src="${pageContext.request.contextPath}/resources/images/system/flo.jpg" alt="Rose Bouquet">
                                </div>
                                <div class="product-info">
                                    <h4>Classic Rose Bouquet</h4>
                                    <div class="product-price">Rs. 1,500</div>
                                    <div class="product-rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                        <span>(42)</span>
                                    </div>
                                </div>
                                <div class="product-actions">
                                    <button class="action-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                                    <button class="action-btn wishlist"><i class="fas fa-heart"></i></button>
                                </div>
                            </div>
                            
                            <div class="product-card">
                                <div class="product-image">
                                    <img src="${pageContext.request.contextPath}/resources/images/system/plush-category.jpg" alt="Premium Teddy">
                                </div>
                                <div class="product-info">
                                    <h4>Premium Teddy Bear</h4>
                                    <div class="product-price">Rs. 1,200</div>
                                    <div class="product-rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                        <span>(28)</span>
                                    </div>
                                </div>
                                <div class="product-actions">
                                    <button class="action-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                                    <button class="action-btn wishlist"><i class="fas fa-heart"></i></button>
                                </div>
                            </div>
                            
                            <div class="product-card">
                                <div class="product-badge">Bestseller</div>
                                <div class="product-image">
                                    <img src="${pageContext.request.contextPath}/resources/images/system/cake.jpg" alt="Chocolate Cake">
                                </div>
                                <div class="product-info">
                                    <h4>Deluxe Chocolate Cake</h4>
                                    <div class="product-price">Rs. 1,800</div>
                                    <div class="product-rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <span>(56)</span>
                                    </div>
                                </div>
                                <div class="product-actions">
                                    <button class="action-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                                    <button class="action-btn wishlist"><i class="fas fa-heart"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="view-all-container">
                            <a href="products.jsp?collection=bestsellers" class="view-all-btn">View All Best Sellers <i class="fas fa-long-arrow-alt-right"></i></a>
                        </div>
                    </div>
                    
                    <div class="tab-pane" id="new-arrivals">
                        <!-- Content will be loaded dynamically -->
                        <div class="placeholder-message">
                            <i class="fas fa-box-open"></i>
                            <p>New arrivals will be displayed here</p>
                        </div>
                    </div>
                    
                    <div class="tab-pane" id="trending">
                        <!-- Content will be loaded dynamically -->
                        <div class="placeholder-message">
                            <i class="fas fa-fire"></i>
                            <p>Trending items will be displayed here</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Promo Banner -->
    <section class="promo-banner">
        <div class="container">
            <div class="promo-content">
                <div class="promo-text">
                    <h2>Mother's Day Special</h2>
                    <h3>Gifts Curated for Her Innocence & Love</h3>
                    <p>Show your appreciation with our exclusive Mother's Day collection. Handpicked gifts that celebrate the special bond you share.</p>
                    <a href="products.jsp?collection=mothers-day" class="promo-btn">Shop the Collection</a>
                </div>
                <div class="promo-image">
                    <img src="${pageContext.request.contextPath}/resources/images/system/mothers-day.jpg" alt="Mother's Day Collection">
                    <div class="floating-hearts">
                        <i class="fas fa-heart heart-1"></i>
                        <i class="fas fa-heart heart-2"></i>
                        <i class="fas fa-heart heart-3"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Testimonials Section -->
    <section class="testimonials-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">What Our Customers Say</h2>
                <div class="squiggle"></div>
                <p class="section-subtitle">Real stories from happy customers</p>
            </div>
            
            <div class="testimonial-slider">
                <div class="testimonial-card">
                    <div class="quote-icon"><i class="fas fa-quote-left"></i></div>
                    <p class="testimonial-text">"The flowers I ordered for my wife's birthday arrived on time and were absolutely gorgeous! The arrangement was even better than the pictures."</p>
                    <div class="testimonial-author">
                        <div class="author-avatar">
                            <img src="${pageContext.request.contextPath}/resources/images/system/a.jpg" alt="Customer">
                        </div>
                        <div class="author-info">
                            <h4>Rahul Sharma</h4>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <div class="quote-icon"><i class="fas fa-quote-left"></i></div>
                    <p class="testimonial-text">"giftopia has become my go-to for all gift needs. Their customer service is exceptional and the gifts always bring smiles!"</p>
                    <div class="testimonial-author">
                        <div class="author-avatar">
                            <img src="${pageContext.request.contextPath}/resources/images/system/b.jpg" alt="Customer">
                        </div>
                        <div class="author-info">
                            <h4>Priya Gupta</h4>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <div class="quote-icon"><i class="fas fa-quote-left"></i></div>
                    <p class="testimonial-text">"I ordered a last-minute birthday gift for my friend and was amazed by how quickly it was delivered. The cake was delicious and beautifully decorated!"</p>
                    <div class="testimonial-author">
                        <div class="author-avatar">
                            <img src="${pageContext.request.contextPath}/resources/images/system/a.jpg" alt="Customer">
                        </div>
                        <div class="author-info">
                            <h4>Aakash Patel</h4>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="testimonial-dots">
                <span class="dot active"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
        </div>
    </section>
    
    

    <jsp:include page="footer.jsp"/>
    
    <script>
        // Tab functionality
        document.addEventListener('DOMContentLoaded', function() {
            const tabButtons = document.querySelectorAll('.tab-btn');
            const tabPanes = document.querySelectorAll('.tab-pane');
            
            tabButtons.forEach(button => {
                button.addEventListener('click', function() {
                    // Remove active class from all buttons and panes
                    tabButtons.forEach(btn => btn.classList.remove('active'));
                    tabPanes.forEach(pane => pane.classList.remove('active'));
                    
                    // Add active class to clicked button
                    this.classList.add('active');
                    
                    // Show corresponding tab pane
                    const tabId = this.getAttribute('data-tab');
                    document.getElementById(tabId).classList.add('active');
                });
            });
            
            // Testimonial slider functionality
            const dots = document.querySelectorAll('.dot');
            dots.forEach((dot, index) => {
                dot.addEventListener('click', function() {
                    // Remove active class from all dots
                    dots.forEach(d => d.classList.remove('active'));
                    
                    // Add active class to clicked dot
                    this.classList.add('active');
                    
                    // Slide the testimonials (would implement with more JS)
                    const testimonialSlider = document.querySelector('.testimonial-slider');
                    testimonialSlider.style.transform = `translateX(-${index * 100 / 3}%)`;
                });
            });
            
            // Animation for floating elements
            const floatingElements = document.querySelectorAll('.floating-icon, .floating-hearts i');
            floatingElements.forEach(element => {
                const randomDelay = Math.random() * 2;
                element.style.animationDelay = `${randomDelay}s`;
            });
        });
    </script>
</body>
</html>