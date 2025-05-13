<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment - GiftOpiaa</title>
    <link rel="stylesheet" href="payment.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="logo">
                <img src="logo.png" alt="GiftOpiaa">
                <span>GiftOpiaa</span>
            </div>
            <ul class="nav-menu">
                <li><a href="dashboard.jsp"><i class="fas fa-th-large"></i> Dashboard</a></li>
                <li><a href="statistics.jsp"><i class="fas fa-chart-line"></i> Statistics</a></li>
                <li class="active"><a href="payment.jsp"><i class="fas fa-credit-card"></i> Payment</a></li>
                <li><a href="transactions.jsp"><i class="fas fa-exchange-alt"></i> Transactions</a></li>
                <li><a href="products.jsp"><i class="fas fa-box"></i> Products</a></li>
                <li><a href="customers.jsp"><i class="fas fa-users"></i> Customers</a></li>
                <li><a href="messages.jsp"><i class="fas fa-comment"></i> Messages <span class="badge">5</span></a></li>
                <li class="bottom-nav"><a href="settings.jsp"><i class="fas fa-cog"></i> Settings</a></li>
            </ul>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Header -->
            <div class="header">
                <div class="page-title">
                    <h1>Payment</h1>
                    <p>Admin > Payment</p>
                </div>
                <div class="header-buttons">
                    <button class="btn inventory-btn"><i class="fas fa-boxes"></i> INVENTORY</button>
                    <button class="btn refresh-btn"><i class="fas fa-sync-alt"></i> REFRESH</button>
                    <button class="btn order-btn"><i class="fas fa-shopping-cart"></i> ORDER</button>
                </div>
                <div class="user-actions">
                    <div class="notifications">
                        <i class="fas fa-bell"></i>
                        <span class="badge">1</span>
                    </div>
                    <div class="user-profile">
                        <img src="profile.jpg" alt="User Profile">
                    </div>
                </div>
            </div>

            <!-- Payment Summary Cards -->
            <div class="summary-cards">
                <div class="card blue">
                    <div class="card-info">
                        <h3>Pending Payments</h3>
                        <h2>$3,450.75</h2>
                        <p><i class="fas fa-clock"></i> 12 transactions pending</p>
                    </div>
                    <div class="card-icon">
                        <i class="fas fa-hourglass-half"></i>
                    </div>
                </div>
                <div class="card green">
                    <div class="card-info">
                        <h3>Completed Payments</h3>
                        <h2>$18,720.50</h2>
                        <p><i class="fas fa-calendar"></i> For current month</p>
                    </div>
                    <div class="card-icon">
                        <i class="fas fa-check-circle"></i>
                    </div>
                </div>
                <div class="card orange">
                    <div class="card-info">
                        <h3>Failed Transactions</h3>
                        <h2>$475.20</h2>
                        <p><i class="fas fa-exclamation-triangle"></i> 3 transactions failed</p>
                    </div>
                    <div class="card-icon">
                        <i class="fas fa-times-circle"></i>
                    </div>
                </div>
            </div>

            <!-- Payment Methods -->
            <div class="payment-methods-section">
                <div class="section-header">
                    <h2>Payment Methods</h2>
                    <button class="btn add-method-btn"><i class="fas fa-plus"></i> Add Method</button>
                </div>
                <div class="payment-methods">
                    <div class="method-card active">
                        <div class="card-icon"><i class="fab fa-cc-visa"></i></div>
                        <div class="method-info">
                            <h3>Visa</h3>
                            <p>**** **** **** 4582</p>
                        </div>
                        <div class="method-status">
                            <span class="active-label">Active</span>
                        </div>
                    </div>
                    <div class="method-card">
                        <div class="card-icon"><i class="fab fa-cc-mastercard"></i></div>
                        <div class="method-info">
                            <h3>Mastercard</h3>
                            <p>**** **** **** 7651</p>
                        </div>
                        <div class="method-actions">
                            <button class="activate-btn">Activate</button>
                        </div>
                    </div>
                    <div class="method-card">
                        <div class="card-icon"><i class="fab fa-paypal"></i></div>
                        <div class="method-info">
                            <h3>PayPal</h3>
                            <p>giftopia@business.com</p>
                        </div>
                        <div class="method-actions">
                            <button class="activate-btn">Activate</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Recent Transactions -->
            <div class="recent-transactions">
                <div class="section-header">
                    <h2>Recent Transactions</h2>
                    <div class="search-box">
                        <input type="text" placeholder="Search transactions...">
                        <button><i class="fas fa-search"></i></button>
                    </div>
                </div>
                <div class="transactions-table">
                    <table>
                        <thead>
                            <tr>
                                <th><input type="checkbox"></th>
                                <th>TRANSACTION ID</th>
                                <th>CUSTOMER</th>
                                <th>DATE</th>
                                <th>AMOUNT</th>
                                <th>PAYMENT METHOD</th>
                                <th>STATUS</th>
                                <th>ACTIONS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>#TX-8795</td>
                                <td class="customer-cell">
                                    <img src="customer1.jpg" alt="Customer">
                                    <span>Natalie Noodasani</span>
                                </td>
                                <td>May 2, 2025</td>
                                <td>$450.00</td>
                                <td><i class="fab fa-cc-visa"></i> Visa</td>
                                <td><span class="status completed">Completed</span></td>
                                <td class="actions">
                                    <button class="view-btn"><i class="fas fa-eye"></i></button>
                                    <button class="edit-btn"><i class="fas fa-pen"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>#TX-8794</td>
                                <td class="customer-cell">
                                    <img src="customer2.jpg" alt="Customer">
                                    <span>Sham</span>
                                </td>
                                <td>May 1, 2025</td>
                                <td>$289.50</td>
                                <td><i class="fab fa-cc-mastercard"></i> Mastercard</td>
                                <td><span class="status completed">Completed</span></td>
                                <td class="actions">
                                    <button class="view-btn"><i class="fas fa-eye"></i></button>
                                    <button class="edit-btn"><i class="fas fa-pen"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>#TX-8793</td>
                                <td class="customer-cell">
                                    <img src="customer3.jpg" alt="Customer">
                                    <span>Valerie Liberty</span>
                                </td>
                                <td>April 30, 2025</td>
                                <td>$98.25</td>
                                <td><i class="fab fa-paypal"></i> PayPal</td>
                                <td><span class="status pending">Pending</span></td>
                                <td class="actions">
                                    <button class="view-btn"><i class="fas fa-eye"></i></button>
                                    <button class="edit-btn"><i class="fas fa-pen"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>#TX-8792</td>
                                <td class="customer-cell">
                                    <img src="customer4.jpg" alt="Customer">
                                    <span>Riya</span>
                                </td>
                                <td>April 28, 2025</td>
                                <td>$132.75</td>
                                <td><i class="fab fa-cc-visa"></i> Visa</td>
                                <td><span class="status failed">Failed</span></td>
                                <td class="actions">
                                    <button class="view-btn"><i class="fas fa-eye"></i></button>
                                    <button class="edit-btn"><i class="fas fa-pen"></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="pagination">
                    <button class="prev-btn"><i class="fas fa-chevron-left"></i></button>
                    <div class="page-numbers">
                        <button class="active">1</button>
                        <button>2</button>
                        <button>3</button>
                        <button>4</button>
                    </div>
                    <button class="next-btn"><i class="fas fa-chevron-right"></i></button>
                </div>
            </div>

            <!-- Footer -->
            <div class="footer">
                <p>&copy; 2025 GiftOpiaa. All rights reserved.</p>
            </div>
        </div>
    </div>

    <script>
        // Simple toggle for mobile menu
        document.addEventListener('DOMContentLoaded', function() {
            const menuToggle = document.querySelector('.menu-toggle');
            const sidebar = document.querySelector('.sidebar');
            
            if (menuToggle) {
                menuToggle.addEventListener('click', function() {
                    sidebar.classList.toggle('active');
                });
            }
        });
    </script>
</body>
</html>