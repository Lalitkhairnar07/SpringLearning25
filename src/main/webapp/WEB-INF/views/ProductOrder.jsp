<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Order</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .order-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 25px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.1);
        }
        .form-label {
            font-weight: 500;
        }
        .btn-custom {
            width: 100%;
            border-radius: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="order-container">
            <h3 class="text-center mb-4 text-primary">Product Order Form</h3>
            <form action="order" method="post">
                <!-- Product Name -->
                <div class="mb-3">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="productName" name="productName" placeholder="Enter product name" >
                </div>
                <div class="text-danger"> ${result.getFieldError("productName").getDefaultMessage()}</div>

                <!-- Category -->
                <div class="mb-3">
                    <label for="category" class="form-label">Category</label>
                    <input type="text" class="form-select" id="category" name="category" >
                    
                </div>
				<div class="text-danger">${result.getFieldError("category").getDefaultMessage()}</div>
                <!-- Quantity -->
                <div class="mb-3">
                    <label for="qty" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="qty" name="qty" min="1" placeholder="Enter quantity" >
                </div>
				<div class="text-danger">${result.getFieldError("qty").getDefaultMessage()}</div>

                <!-- Price -->
                <div class="mb-3">
                    <label for="price" class="form-label">Price (₹)</label>
                    <input type="number" class="form-control" id="price" name="price" min="1" placeholder="Enter price" >
                </div>
                <div class="text-danger">${result.getFieldError("price").getDefaultMessage()}</div>

                <!-- Address -->
                <div class="mb-3">
                    <label for="address" class="form-label">Delivery Address</label>
                    <textarea class="form-control" id="address" name="address" rows="3" placeholder="Enter delivery address" ></textarea>
                </div>
                <div class="text-danger">${result.getFieldError("address").getDefaultMessage()}</div>

                <!-- Submit -->
                <button type="submit" class="btn btn-primary btn-custom">Place Order</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
