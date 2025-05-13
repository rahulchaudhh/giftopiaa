<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gift Store - New Purchase Order</title>
  <link rel="stylesheet" href="purchaseOrder.css">
  <script>
    function calculateItemTotal(row) {
      const quantity = parseFloat(row.querySelector('.item-quantity').value) || 0;
      const unitPrice = parseFloat(row.querySelector('.item-price').value) || 0;
      const total = quantity * unitPrice;
      row.querySelector('.item-total').innerText = '$' + total.toFixed(2);
      calculateOrderTotal();
    }
    
    function calculateOrderTotal() {
      let subtotal = 0;
      document.querySelectorAll('.item-row').forEach(row => {
        const totalText = row.querySelector('.item-total').innerText;
        subtotal += parseFloat(totalText.replace('$', '')) || 0;
      });
      
      document.getElementById('subtotal').innerText = '$' + subtotal.toFixed(2);
      
      // Calculate discount
      let discountRate = 0;
      if (subtotal >= 2500) {
        discountRate = 0.10;
      } else if (subtotal >= 1000) {
        discountRate = 0.05;
      }
      const discountAmount = subtotal * discountRate;
      document.getElementById('discount-rate').innerText = (discountRate * 100) + '%';
      document.getElementById('discount').innerText = '$' + discountAmount.toFixed(2);
      
      // Calculate tax
      const taxRate = 0.07;
      const taxableAmount = subtotal - discountAmount;
      const taxAmount = taxableAmount * taxRate;
      document.getElementById('tax').innerText = '$' + taxAmount.toFixed(2);
      
      // Get shipping cost
      const shippingCost = parseFloat(document.getElementById('shipping').innerText.replace('$', '')) || 0;
      
      // Calculate total
      const total = taxableAmount + taxAmount + shippingCost;
      document.getElementById('total').innerText = '$' + total.toFixed(2);
    }
    
    function addNewItem() {
      const tbody = document.querySelector('.items-table tbody');
      const newRow = document.createElement('tr');
      newRow.className = 'item-row';
      newRow.innerHTML = `
        <td><input type="text" name="sku[]" class="form-control"></td>
        <td><input type="text" name="description[]" class="form-control"></td>
        <td>
          <select name="category[]" class="form-control">
            <option value="decorative">Decorative</option>
            <option value="seasonal">Seasonal</option>
            <option value="packaging">Packaging</option>
            <option value="cards">Cards</option>
          </select>
        </td>
        <td><input type="number" name="quantity[]" class="form-control item-quantity" value="1" min="1" onchange="calculateItemTotal(this.parentNode.parentNode)"></td>
        <td><input type="number" name="unitPrice[]" class="form-control item-price" value="0.00" step="0.01" min="0" onchange="calculateItemTotal(this.parentNode.parentNode)"></td>
        <td class="item-total">$0.00</td>
        <td><button type="button" class="btn-remove" onclick="removeItem(this)">×</button></td>
      `;
      tbody.appendChild(newRow);
    }
    
    function removeItem(button) {
      const row = button.parentNode.parentNode;
      row.parentNode.removeChild(row);
      calculateOrderTotal();
    }
  </script>
</head>
<body>
  <div class="container">
    <form action="submitPurchaseOrder.jsp" method="post">
      <div class="header">
        <div class="logo">
          <div class="logo-img"></div>
          <div class="logo-text">Gift Haven</div>
        </div>
        <div class="header-title">New Purchase Order</div>
      </div>
      
      <div class="card">
        <div class="form-row">
          <div class="form-group">
            <label for="supplier">Supplier</label>
            <select id="supplier" name="supplier" required>
              <option value="">Select a supplier</option>
              <c:forEach items="${suppliers}" var="supplier">
                <option value="${supplier.id}">${supplier.name}</option>
              </c:forEach>
              <!-- Fallback options if suppliers not provided from backend -->
              <c:if test="${empty suppliers}">
                <option value="1">Elegant Crafts Co.</option>
                <option value="2">Artisan Gift Supplies</option>
                <option value="3">Global Gift Wholesalers</option>
                <option value="4">Luxury Packaging Ltd.</option>
              </c:if>
            </select>
          </div>
          <div class="form-group">
            <label for="poNumber">PO Number</label>
            <input type="text" id="poNumber" name="poNumber" value="${poNumber}" readonly>
          </div>
        </div>
        
        <div class="form-row">
          <div class="form-group">
            <label for="orderDate">Order Date</label>
            <input type="date" id="orderDate" name="orderDate" value="${today}" required>
          </div>
          <div class="form-group">
            <label for="deliveryDate">Expected Delivery Date</label>
            <input type="date" id="deliveryDate" name="deliveryDate" required>
          </div>
          <div class="form-group">
            <label for="status">Status</label>
            <select id="status" name="status">
              <option value="draft">Draft</option>
              <option value="pending">Pending</option>
              <option value="confirmed">Confirmed</option>
              <option value="received">Received</option>
            </select>
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="billingAddress">Billing Address</label>
            <textarea id="billingAddress" name="billingAddress" rows="3" required>Gift Haven
123 Main Street
Cityville, State 12345</textarea>
          </div>
          <div class="form-group">
            <label for="shippingAddress">Shipping Address</label>
            <textarea id="shippingAddress" name="shippingAddress" rows="3" required>Gift Haven - Main Store
123 Main Street
Cityville, State 12345</textarea>
          </div>
        </div>
      </div>
      
      <div class="card">
        <h3><span class="badge">2</span>Order Items</h3>
        
        <table class="items-table">
          <thead>
            <tr>
              <th>SKU</th>
              <th>Item Description</th>
              <th>Category</th>
              <th>Quantity</th>
              <th>Unit Price</th>
              <th>Total</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <tr class="item-row">
              <td><input type="text" name="sku[]" value="GFT-001" class="form-control"></td>
              <td><input type="text" name="description[]" value="Handcrafted Wooden Ornament" class="form-control"></td>
              <td>
                <select name="category[]" class="form-control">
                  <option value="decorative">Decorative</option>
                  <option value="seasonal">Seasonal</option>
                  <option value="packaging">Packaging</option>
                  <option value="cards">Cards</option>
                </select>
              </td>
              <td><input type="number" name="quantity[]" value="50" min="1" class="form-control item-quantity" onchange="calculateItemTotal(this.parentNode.parentNode)"></td>
              <td><input type="number" name="unitPrice[]" value="8.99" step="0.01" min="0" class="form-control item-price" onchange="calculateItemTotal(this.parentNode.parentNode)"></td>
              <td class="item-total">$449.50</td>
              <td><button type="button" class="btn-remove" onclick="removeItem(this)">×</button></td>
            </tr>
            <tr class="item-row">
              <td><input type="text" name="sku[]" value="GFT-023" class="form-control"></td>
              <td><input type="text" name="description[]" value="Scented Candle Set" class="form-control"></td>
              <td>
                <select name="category[]" class="form-control">
                  <option value="decorative" selected>Decorative</option>
                  <option value="seasonal">Seasonal</option>
                  <option value="packaging">Packaging</option>
                  <option value="cards">Cards</option>
                </select>
              </td>
              <td><input type="number" name="quantity[]" value="30" min="1" class="form-control item-quantity" onchange="calculateItemTotal(this.parentNode.parentNode)"></td>
              <td><input type="number" name="unitPrice[]" value="12.50" step="0.01" min="0" class="form-control item-price" onchange="calculateItemTotal(this.parentNode.parentNode)"></td>
              <td class="item-total">$375.00</td>
              <td><button type="button" class="btn-remove" onclick="removeItem(this)">×</button></td>
            </tr>
          </tbody>
        </table>
        
        <div class="add-item" onclick="addNewItem()">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
            <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
          </svg>
          Add Item
        </div>
        
        <div class="note">
          <div class="note-icon">ⓘ</div>
          <div>
            <strong>Bulk Discount:</strong> Orders over $1,000 qualify for a 5% discount. Orders over $2,500 qualify for a 10% discount.
          </div>
        </div>
        
        <div class="summary">
          <div class="form-group" style="flex: 1;">
            <label for="notes">Notes & Special Instructions</label>
            <textarea id="notes" name="notes" rows="4" placeholder="Add any special instructions or notes for this order..."></textarea>
          </div>
          
          <div class="summary-details">
            <div class="summary-row">
              <div>Subtotal:</div>
              <div id="subtotal">$824.50</div>
            </div>
            <div class="summary-row">
              <div>Discount (<span id="discount-rate">0%</span>):</div>
              <div id="discount">$0.00</div>
            </div>
            <div class="summary-row">
              <div>Tax (7%):</div>
              <div id="tax">$57.72</div>
            </div>
            <div class="summary-row">
              <div>Shipping:</div>
              <div id="shipping">$35.00</div>
              <input type="hidden" name="shippingCost" value="35.00">
            </div>
            <div class="summary-row total">
              <div>Total:</div>
              <div id="total">$917.22</div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="card">
        <h3><span class="badge">3</span>Payment & Terms</h3>
        
        <div class="form-row">
          <div class="form-group">
            <label for="paymentTerms">Payment Terms</label>
            <select id="paymentTerms" name="paymentTerms">
              <option value="net30">Net 30</option>
              <option value="net60">Net 60</option>
              <option value="cod">Cash on Delivery</option>
              <option value="prepaid">Prepaid</option>
            </select>
          </div>
          <div class="form-group">
            <label for="paymentMethod">Payment Method</label>
            <select id="paymentMethod" name="paymentMethod">
              <option value="bank-transfer">Bank Transfer</option>
              <option value="credit-card">Credit Card</option>
              <option value="check">Check</option>
            </select>
          </div>
        </div>
        
        <div class="form-row">
          <div class="form-group">
            <label for="currency">Currency</label>
            <select id="currency" name="currency">
              <option value="usd">USD</option>
              <option value="eur">EUR</option>
              <option value="gbp">GBP</option>
              <option value="cad">CAD</option>
            </select>
          </div>
          <div class="form-group">
            <label for="shippingMethod">Shipping Method</label>
            <select id="shippingMethod" name="shippingMethod" onchange="updateShipping()">
              <option value="standard">Standard Shipping</option>
              <option value="expedited">Expedited</option>
              <option value="overnight">Overnight</option>
              <option value="pickup">Supplier Pickup</option>
            </select>
          </div>
        </div>
      </div>
      
      <div class="buttons">
        <input type="submit" name="action" value="Save as Draft" class="btn btn-secondary">
        <input type="submit" name="action" value="Create Purchase Order" class="btn btn-primary">
      </div>
    </form>
  </div>
  
  <script>
    // Initialize calculations when page loads
    document.addEventListener('DOMContentLoaded', function() {
      document.querySelectorAll('.item-row').forEach(row => {
        calculateItemTotal(row);
      });
      
      // Set today's date as default
      if (!document.getElementById('orderDate').value) {
        const today = new Date().toISOString().split('T')[0];
        document.getElementById('orderDate').value = today;
      }
      
      // Set default delivery date (today + 14 days)
      if (!document.getElementById('deliveryDate').value) {
        const deliveryDate = new Date();
        deliveryDate.setDate(deliveryDate.getDate() + 14);
        document.getElementById('deliveryDate').value = deliveryDate.toISOString().split('T')[0];
      }
    });
    
    function updateShipping() {
      const method = document.getElementById('shippingMethod').value;
      let cost = 35.00; // default
      
      if (method === 'expedited') {
        cost = 55.00;
      } else if (method === 'overnight') {
        cost = 95.00;
      } else if (method === 'pickup') {
        cost = 0.00;
      }
      
      document.getElementById('shipping').innerText = '$' + cost.toFixed(2);
      document.querySelector('input[name="shippingCost"]').value = cost.toFixed(2);
      calculateOrderTotal();
    }
  </script>
</body>
</html>