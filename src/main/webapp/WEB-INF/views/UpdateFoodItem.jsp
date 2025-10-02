<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Food Item</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f2f2f2;
    }
    .form-container {
        width: 400px;
        margin: 50px auto;
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px #aaa;
    }
    h2 {
        text-align: center;
    }
    input[type=text], input[type=number] {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type=submit] {
        background: #28a745;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
    }
    input[type=submit]:hover {
        background: #218838;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h2>Add Food Item</h2>
        <form action="updatefooditem" method="post">
            
            <input type="hidden" name="foodItemId" value="${x.foodItemId}">
            
            <!-- Food Name -->
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter Food Name" value="${x.name}">
            
            <!-- Price -->
            <label>Price</label>
            <input type="number" name="price" placeholder="Enter Price" value="${x.price}">
            
            <!-- Quantity -->
            <label>Quantity</label>
            <input type="number" name="qty" placeholder="Enter Quantity" value="${x.qty}">
            
            <input type="submit" value="Update Food Item">
        </form>
    </div>
</body>
</html>
