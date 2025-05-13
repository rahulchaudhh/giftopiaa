<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Gifts - YourKoseli</title>
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/system/favicon.ico" type="image/x-icon">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/products.css">
</head>
<body>
    <jsp:include page="header.jsp"/>

    <main class="products-main">
        <!-- Hero Banner -->
        <section class="hero-banner">
            <div class="hero-overlay"></div>
            <div class="hero-content">
                <h1>Exquisite Gift Collections</h1>
                <p class="tagline">Curated treasures for moments that matter</p>
                <a href="#collection" class="cta-button">Explore Collection</a>
            </div>
        </section>

        <!-- Product Categories -->
        <section class="categories-section">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title">Browse Categories</h2>
                    <div class="section-divider">
                        <span class="divider-dot"></span>
                        <span class="divider-line"></span>
                        <span class="divider-dot"></span>
                    </div>
                    <p class="section-subtitle">Find the perfect gift for every occasion</p>
                </div>
                
                <div class="categories-grid">
                    <a href="#chocolates" class="category-card">
                        <div class="category-image">
                            <img src="${pageContext.request.contextPath}/resources/images/system/co.jpg" alt="Chocolates">
                        </div>
                        <div class="category-content">
                            <h3>Chocolates</h3>
                            <span class="category-count">24 items</span>
                        </div>
                        <div class="hover-effect"></div>
                    </a>
                    <a href="#plush" class="category-card">
                        <div class="category-image">
                            <img src="${pageContext.request.contextPath}/resources/images/system/plush-category.jpg" alt="Plush Toys">
                        </div>
                        <div class="category-content">
                            <h3>Plush Toys</h3>
                            <span class="category-count">18 items</span>
                        </div>
                        <div class="hover-effect"></div>
                    </a>
                    <a href="#flowers" class="category-card">
                        <div class="category-image">
                            <img src="${pageContext.request.contextPath}/resources/images/system/flo.jpg" alt="Flowers">
                        </div>
                        <div class="category-content">
                            <h3>Flowers</h3>
                            <span class="category-count">16 items</span>
                        </div>
                        <div class="hover-effect"></div>
                    </a>
                    <a href="#personalized" class="category-card">
                        <div class="category-image">
                            <img src="${pageContext.request.contextPath}/resources/images/system/neck.jpg" alt="Personalized">
                        </div>
                        <div class="category-content">
                            <h3>Personalized</h3>
                            <span class="category-count">20 items</span>
                        </div>
                        <div class="hover-effect"></div>
                    </a>
                </div>
            </div>
        </section>

        <!-- Featured Products -->
        <section class="featured-section">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title">Featured Selections</h2>
                    <div class="section-divider">
                        <span class="divider-dot"></span>
                        <span class="divider-line"></span>
                        <span class="divider-dot"></span>
                    </div>
                    <p class="section-subtitle">Our most beloved treasures</p>
                </div>

                <div class="featured-products">
                    <div class="product-card featured">
                        <div class="product-image-container">
                            <img src="${pageContext.request.contextPath}/resources/images/system/LuxuryChocolateBox.jpg" 
                                 alt="Luxury Chocolate Box" class="product-image">
                            <div class="product-badge bestseller">Bestseller</div>
                            <div class="product-actions">
                                <button class="action-btn wishlist" title="Add to Wishlist"><i class="fas fa-heart"></i></button>
                                <button class="action-btn quick-view" title="Quick View"><i class="fas fa-eye"></i></button>
                                <button class="action-btn add-to-cart" title="Add to Cart"><i class="fas fa-shopping-cart"></i></button>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-category">Chocolates</div>
                            <h3 class="product-title">Luxury Chocolate Box</h3>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                                <span class="rating-count">(128)</span>
                            </div>
                            <div class="product-price">
                                <span class="current-price">Rs. 1,599</span>
                            </div>
                        </div>
                    </div>

                    <div class="product-card featured">
                        <div class="product-image-container">
                            <img src="${pageContext.request.contextPath}/resources/images/system/Delightful-Dry-Nuts-Sweets-Gift-Tray-with-Candle-Card-Giftmandu_109035__51414.jpg" 
                                 alt="Hamper Nuts pack" class="product-image">
                            <div class="product-badge new">New</div>
                            <div class="product-actions">
                                <button class="action-btn wishlist" title="Add to Wishlist"><i class="fas fa-heart"></i></button>
                                <button class="action-btn quick-view" title="Quick View"><i class="fas fa-eye"></i></button>
                                <button class="action-btn add-to-cart" title="Add to Cart"><i class="fas fa-shopping-cart"></i></button>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-category">Food</div>
                            <h3 class="product-title">hamper Nuts pack</h3>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <span class="rating-count">(86)</span>
                            </div>
                            <div class="product-price">
                                <span class="current-price">Rs. 2,499</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- All Products -->
        <section id="collection" class="products-section">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title">Our Gift Collection</h2>
                    <div class="section-divider">
                        <span class="divider-dot"></span>
                        <span class="divider-line"></span>
                        <span class="divider-dot"></span>
                    </div>
                    <p class="section-subtitle">Thoughtfully crafted for every special moment</p>
                </div>

                <div class="product-filters">
                    <button class="filter-btn active" data-filter="all">All</button>
                    <button class="filter-btn" data-filter="chocolates">Chocolates</button>
                    <button class="filter-btn" data-filter="plush">Plush Toys</button>
                    <button class="filter-btn" data-filter="flowers">Flowers</button>
                    <button class="filter-btn" data-filter="personalized">Personalized</button>
                </div>

                <div class="product-grid">
                    <!-- Product 1 -->
                    <div class="product-card" data-category="chocolates">
                        <div class="product-image-container">
                            <img src="${pageContext.request.contextPath}/resources/images/system/LuxuryChocolateBox.jpg" 
                                 alt="Luxury Chocolate Box" class="product-image">
                            <div class="product-badge bestseller">Bestseller</div>
                            <div class="product-actions">
                                <button class="action-btn wishlist" title="Add to Wishlist"><i class="fas fa-heart"></i></button>
                                <button class="action-btn quick-view" title="Quick View"><i class="fas fa-eye"></i></button>
                                <button class="action-btn add-to-cart" title="Add to Cart"><i class="fas fa-shopping-cart"></i></button>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-category">Chocolates</div>
                            <h3 class="product-title">Luxury Chocolate Box</h3>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                                <span class="rating-count">(128)</span>
                            </div>
                            <div class="product-price">
                                <span class="current-price">Rs. 1,599</span>
                            </div>
                        </div>
                    </div>

                    <!-- Product 2 -->
                    <div class="product-card" data-category="plush">
                        <div class="product-image-container">
                            <img src="${pageContext.request.contextPath}/resources/images/system/teddy.jpg" 
                                 alt="Jumbo Teddy Bear" class="product-image">
                            <div class="product-badge new">New</div>
                            <div class="product-actions">
                                <button class="action-btn wishlist" title="Add to Wishlist"><i class="fas fa-heart"></i></button>
                                <button class="action-btn quick-view" title="Quick View"><i class="fas fa-eye"></i></button>
                                <button class="action-btn add-to-cart" title="Add to Cart"><i class="fas fa-shopping-cart"></i></button>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-category">Plush Toys</div>
                            <h3 class="product-title">Jumbo Teddy Bear</h3>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <span class="rating-count">(86)</span>
                            </div>
                            <div class="product-price">
                                <span class="current-price">Rs. 2,499</span>
                            </div>
                        </div>
                    </div>

                    <!-- Sample Products (You can duplicate and modify these as needed) -->
                    <div class="product-card" data-category="flowers">
                        <div class="product-image-container">
                            <img src="${pageContext.request.contextPath}/resources/images/system/rose.jpeg" 
                                 alt="Red Rose Bouquet" class="product-image">
                            <div class="product-actions">
                                <button class="action-btn wishlist" title="Add to Wishlist"><i class="fas fa-heart"></i></button>
                                <button class="action-btn quick-view" title="Quick View"><i class="fas fa-eye"></i></button>
                                <button class="action-btn add-to-cart" title="Add to Cart"><i class="fas fa-shopping-cart"></i></button>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-category">Flowers</div>
                            <h3 class="product-title">Red Rose Bouquet</h3>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span class="rating-count">(43)</span>
                            </div>
                            <div class="product-price">
                                <span class="current-price">Rs. 1,299</span>
                            </div>
                        </div>
                    </div>

                    <div class="product-card" data-category="personalized">
                        <div class="product-image-container">
                            <img src="${pageContext.request.contextPath}/resources/images/system/neck.jpg" 
                                 alt="Custom Name Necklace" class="product-image">
                            <div class="product-badge popular">Popular</div>
                            <div class="product-actions">
                                <button class="action-btn wishlist" title="Add to Wishlist"><i class="fas fa-heart"></i></button>
                                <button class="action-btn quick-view" title="Quick View"><i class="fas fa-eye"></i></button>
                                <button class="action-btn add-to-cart" title="Add to Cart"><i class="fas fa-shopping-cart"></i></button>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-category">Personalized</div>
                            <h3 class="product-title">Custom Name Necklace</h3>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                                <span class="rating-count">(95)</span>
                            </div>
                            <div class="product-price">
                                <span class="current-price">Rs. 1,899</span>
                                <span class="original-price">Rs. 2,299</span>
                            </div>
                        </div>
                    </div>

                    <!-- Add more products as needed -->
                </div>

                <div class="load-more">
                    <button class="load-more-btn">View More Gifts <i class="fas fa-angle-down"></i></button>
                </div>
            </div>
        </section>

        <!-- Special Offer -->
        <section class="offer-section">
            <div class="container">
                <div class="offer-banner">
                    <div class="offer-image">
                        <img src="${pageContext.request.contextPath}/resources/images/system/v.jpg" alt="Valentine's Special">
                    </div>
                    <div class="offer-content">
                        <span class="offer-subtitle">Limited Time</span>
                        <h3 class="offer-title">Valentine's Special Collection</h3>
                        <p class="offer-description">Express your love with our carefully curated selection of romantic gifts. Enjoy 15% off on all gift combos.</p>
                        <div class="offer-countdown" id="valentineCountdown">
                            <div class="countdown-item">
                                <span class="days">00</span>
                                <span class="label">Days</span>
                            </div>
                            <div class="countdown-item">
                                <span class="hours">00</span>
                                <span class="label">Hours</span>
                            </div>
                            <div class="countdown-item">
                                <span class="minutes">00</span>
                                <span class="label">Mins</span>
                            </div>
                            <div class="countdown-item">
                                <span class="seconds">00</span>
                                <span class="label">Secs</span>
                            </div>
                        </div>
                        <a href="#" class="offer-btn">Shop The Collection</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="testimonials-section">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title">What Our Customers Say</h2>
                    <div class="section-divider">
                        <span class="divider-dot"></span>
                        <span class="divider-line"></span>
                        <span class="divider-dot"></span>
                    </div>
                </div>
                
                <div class="testimonials-slider">
                    <div class="testimonial-card">
                        <div class="testimonial-content">
                            <i class="fas fa-quote-left quote-icon"></i>
                            <p>The luxury chocolate box was absolutely divine. The packaging was elegant and the chocolates were of exceptional quality. Perfect gift for my mother's birthday!</p>
                        </div>
                        <div class="testimonial-author">
                            <img src="${pageContext.request.contextPath}/resources/images/system/a.jpg" alt="Aarav Sharma" class="author-image">
                            <div class="author-info">
                                <h4>Aarav Sharma</h4>
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
                        <div class="testimonial-content">
                            <i class="fas fa-quote-left quote-icon"></i>
                            <p>The teddy bear is huge and so soft! My girlfriend loved it. The delivery was also very prompt and the packaging was impressive. Will definitely shop here again.</p>
                        </div>
                        <div class="testimonial-author">
                            <img src="${pageContext.request.contextPath}/resources/images/system/b.jpg" alt="Priya Patel" class="author-image">
                            <div class="author-info">
                                <h4>Priya Patel</h4>
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

        <!-- Newsletter -->
        <section class="newsletter-section">
            <div class="container">
                <div class="newsletter-content">
                    <h3>Subscribe For Special Offers</h3>
                    <p>Be the first to know about new collections and exclusive offers</p>
                    <form class="newsletter-form">
                        <input type="email" placeholder="Your Email Address" required>
                        <button type="submit">Subscribe</button>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <jsp:include page="footer.jsp"/>

    <!-- Quick View Modal -->
    <div id="quickViewModal" class="modal">
        <div class="modal-content">
            <span class="close-modal">&times;</span>
            <div class="product-quick-view">
                <div class="product-quick-image">
                    <img src="" alt="Product" id="modalProductImage">
                </div>
                <div class="product-quick-details">
                    <h2 id="modalProductTitle"></h2>
                    <div class="product-quick-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <span id="modalRatingCount"></span>
                    </div>
                    <div class="product-quick-price" id="modalProductPrice"></div>
                    <p class="product-quick-description">
                        A delightful gift perfect for any occasion. This item has been crafted with attention to detail and quality materials to ensure satisfaction.
                    </p>
                    <div class="product-quick-quantity">
                        <label>Quantity:</label>
                        <div class="quantity-selector">
                            <button class="quantity-btn minus">-</button>
                            <input type="number" value="1" min="1" max="99">
                            <button class="quantity-btn plus">+</button>
                        </div>
                    </div>
                    <div class="product-quick-actions">
                        <button class="add-to-cart-btn">Add to Cart</button>
                        <button class="wishlist-btn"><i class="fas fa-heart"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/products.js"></script>
</body>
</html>