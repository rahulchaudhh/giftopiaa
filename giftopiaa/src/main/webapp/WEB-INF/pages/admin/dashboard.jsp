<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GiftOpiaa | Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dashboard.css">
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    </head>
<body>
    <div class="app-container">
        <!-- Sidebar Navigation -->
        <aside class="sidebar">
            <div class="sidebar-header">
                <div class="logo">
                    <i class="fas fa-gift"></i>
                    <span>GiftOpiaa</span>
                </div>
                <button class="menu-toggle" id="menuToggle">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
            
            <nav class="sidebar-nav">
                <ul>
                    <li class="nav-item active">
                        <a href="${pageContext.request.contextPath}/pages/admin/dashboard.jsp">
                            <i class="fas fa-th-large"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#">
                            <i class="fas fa-chart-line"></i>
                            <span>Statistics</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#">
                            <i class="fas fa-credit-card"></i>
                            <span>Payment</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#">
                            <i class="fas fa-exchange-alt"></i>
                            <span>Transactions</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#">
                            <i class="fas fa-boxes"></i>
                            <span>Products</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#">
                            <i class="fas fa-users"></i>
                            <span>Customers</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#">
                            <i class="fas fa-comments"></i>
                            <span>Messages</span>
                            <span class="badge">5</span>
                        </a>
                    </li>
                </ul>
            </nav>
            
            <div class="sidebar-footer">
                <a href="#" class="settings-link">
                    <i class="fas fa-cog"></i>
                    <span>Settings</span>
                </a>
                <a href="#" class="logout-link">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Log out</span>
                </a>
            </div>
        </aside>

        <!-- Main Content Area -->
        <main class="main-content">
            <!-- Top Header -->
            <header class="top-header">
                <div class="header-left">
                    <h1 class="page-title">Dashboard</h1>
                    <div class="breadcrumb">
                        <span>Admin</span>
                        <i class="fas fa-chevron-right"></i>
                        <span>Dashboard</span>
                    </div>
                </div>
                
                <div class="header-right">
                    <div class="header-actions">
                        <button class="btn btn-primary">
                            <i class="fas fa-box-open"></i>
                            <span>INVENTORY</span>
                        </button>
                        <button class="btn btn-outline">
                            <i class="fas fa-sync-alt"></i>
                            <span>REFRESH</span>
                        </button>
                        <button class="btn btn-outline">
                            <i class="fas fa-shopping-cart"></i>
                            <span>ORDER</span>
                        </button>
                    </div>
                    
                    <div class="view-toggle">
                        <button class="btn-icon active">
                            <i class="fas fa-list"></i>
                        </button>
                        <button class="btn-icon">
                            <i class="fas fa-th"></i>
                        </button>
                    </div>
                    
                    <div class="user-menu">
                        <div class="notifications">
                            <i class="fas fa-bell"></i>
                            <span class="badge">3</span>
                        </div>
                        <div class="user-avatar">
                         <img src="${pageContext.request.contextPath}/resources/images/system/gs.jpg" alt="Maria">
                        </div>
                    </div>
                </div>
            </header>

            <!-- Dashboard Content -->
            <div class="dashboard-content">
                <!-- Summary Cards -->
                <div class="stats-cards">
                    <div class="stat-card animate__animated animate__fadeIn" style="--delay: 0.1s">
                        <div class="stat-card-content">
                            <div class="stat-card-info">
                                <h3 class="stat-card-title">Today's Sales</h3>
                                <p class="stat-card-value">$20.4K</p>
                                <p class="stat-card-desc">
                                    <i class="fas fa-clock"></i>
                                    Last Updated: 2 minutes ago
                                </p>
                            </div>
                            <div class="stat-card-icon blue">
                                <i class="fas fa-shopping-bag"></i>
                            </div>
                        </div>
                        <div class="stat-card-chart blue"></div>
                    </div>
                    
                    <div class="stat-card animate__animated animate__fadeIn" style="--delay: 0.2s">
                        <div class="stat-card-content">
                            <div class="stat-card-info">
                                <h3 class="stat-card-title">Today's Revenue</h3>
                                <p class="stat-card-value">$8.2K</p>
                                <p class="stat-card-desc">
                                    <i class="fas fa-calendar-alt"></i>
                                    Accumulated for period
                                </p>
                            </div>
                            <div class="stat-card-icon green">
                                <i class="fas fa-dollar-sign"></i>
                            </div>
                        </div>
                        <div class="stat-card-chart green"></div>
                    </div>
                    
                    <div class="stat-card animate__animated animate__fadeIn" style="--delay: 0.3s">
                        <div class="stat-card-content">
                            <div class="stat-card-info">
                                <h3 class="stat-card-title">In Expenses</h3>
                                <p class="stat-card-value">$18.2K</p>
                                <p class="stat-card-desc">
                                    <i class="fas fa-tag"></i>
                                    Adjusted for period
                                </p>
                            </div>
                            <div class="stat-card-icon orange">
                                <i class="fas fa-receipt"></i>
                            </div>
                        </div>
                        <div class="stat-card-chart orange"></div>
                    </div>
                </div>

                <!-- Charts & Analytics Section -->
               

                <!-- Customer Table -->
                <div class="customer-widget animate__animated animate__fadeIn" style="--delay: 0.6s">
                    <div class="widget-header">
                        <div class="widget-title">
                            <h2>Customer Details</h2>
                            <div class="widget-subtitle">Registered gift store customers</div>
                        </div>
                        <div class="widget-actions">
                            <div class="search-box">
                                <i class="fas fa-search"></i>
                                <input type="text" placeholder="Search customers...">
                            </div>
                            <button class="btn btn-outline-sm">
                                <i class="fas fa-plus"></i>
                                <span>Add Customer</span>
                            </button>
                        </div>
                    </div>
                    
                    <div class="widget-body">
                        <div class="table-responsive">
                            <table class="data-table">
                                <thead>
                                    <tr>
                                        <th>
                                            <input type="checkbox" class="select-all">
                                        </th>
                                        <th>Customer</th>
                                        <th>Last Purchase</th>
                                        <th>Spent</th>
                                        <th>Email</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="row-select">
                                        </td>
                                        <td class="customer-info">
                                            <div class="customer-avatar">
                                                <img src="${pageContext.request.contextPath}/resources/images/system/a.jpg" alt="Alexander">
                                            </div>
                                            <span>sham</span>
                                        </td>
                                        <td>May 1, 2025</td>
                                        <td>$289.50</td>
                                        <td>sham.a@example.com</td>
                                        <td class="actions">
                                            <button class="btn-icon" title="View Orders">
                                                <i class="fas fa-shopping-bag"></i>
                                            </button>
                                            <button class="btn-icon" title="Edit Customer">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="row-select">
                                        </td>
                                        <td class="customer-info">
                                            <div class="customer-avatar">
                                                <img src="${pageContext.request.contextPath}/resources/images/system/b.jpg" alt="Maria">
                                            </div>
                                            <span>riya</span>
                                        </td>
                                        <td>April 28, 2025</td>
                                        <td>$132.75</td>
                                        <td>riya@example.com</td>
                                        <td class="actions">
                                            <button class="btn-icon" title="View Orders">
                                                <i class="fas fa-shopping-bag"></i>
                                            </button>
                                            <button class="btn-icon" title="Edit Customer">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="row-select">
                                        </td>
                                        <td class="customer-info">
                                            <div class="customer-avatar">
                                                <img src="${pageContext.request.contextPath}/resources/images/system/gs.jpg" alt="Natalie">
                                            </div>
                                            <span>Natalie Noodasani</span>
                                        </td>
                                        <td>May 2, 2025</td>
                                        <td>$450.00</td>
                                        <td>natalie.n@example.com</td>
                                        <td class="actions">
                                            <button class="btn-icon" title="View Orders">
                                                <i class="fas fa-shopping-bag"></i>
                                            </button>
                                            <button class="btn-icon" title="Edit Customer">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="row-select">
                                        </td>
                                        <td class="customer-info">
                                            <div class="customer-avatar">
                                                <img src="${pageContext.request.contextPath}/resources/images/system/teddy.jpg" alt="Valerie">
                                            </div>
                                            <span>Valerie Liberty</span>
                                        </td>
                                        <td>April 30, 2025</td>
                                        <td>$98.25</td>
                                        <td>v.liberty@example.com</td>
                                        <td class="actions">
                                            <button class="btn-icon" title="View Orders">
                                                <i class="fas fa-shopping-bag"></i>
                                            </button>
                                            <button class="btn-icon" title="Edit Customer">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        
                        <div class="table-footer">
                            <div class="table-info">
                                Showing 1 to 4 of 4 entries
                            </div>
                            <div class="pagination">
                                <button class="btn-icon" disabled>
                                    <i class="fas fa-chevron-left"></i>
                                </button>
                                <button class="btn-page active">1</button>
                                <button class="btn-icon" disabled>
                                    <i class="fas fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer class="dashboard-footer">
                <div class="footer-content">
                    <p>&copy; 2025 GiftOpiaa. All rights reserved.</p>
                </div>
            </footer>
        </main>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Toggle sidebar
            const menuToggle = document.getElementById('menuToggle');
            const appContainer = document.querySelector('.app-container');
            
            if (menuToggle) {
                menuToggle.addEventListener('click', function() {
                    appContainer.classList.toggle('sidebar-collapsed');
                });
            }
            
            // Revenue Chart
            const ctx = document.getElementById('revenueChart').getContext('2d');
            const revenueChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                    datasets: [{
                        label: 'Revenue',
                        data: [4500, 4200, 3800, 3000, 2200, 3800, 4500],
                        backgroundColor: '#4361ee',
                        borderColor: '#4361ee',
                        borderWidth: 0,
                        borderRadius: 5,
                        maxBarThickness: 25
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        },
                        tooltip: {
                            backgroundColor: '#333',
                            titleColor: '#fff',
                            bodyColor: '#fff',
                            displayColors: false,
                            callbacks: {
                                label: function(context) {
                                    return '$ ' + context.raw;
                                }
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            grid: {
                                color: 'rgba(0, 0, 0, 0.05)'
                            },
                            ticks: {
                                callback: function(value) {
                                    return '$ ' + value;
                                }
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    }
                }
            });
            
            // Table select all functionality
            const selectAll = document.querySelector('.select-all');
            const rowSelects = document.querySelectorAll('.row-select');
            
            if (selectAll) {
                selectAll.addEventListener('change', function() {
                    rowSelects.forEach(checkbox => {
                        checkbox.checked = selectAll.checked;
                    });
                });
            }
        });
    </script>
</body>
</html>