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
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px #aaa;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    label {
        font-weight: bold;
    }
    input[type=text], 
    input[type=number] {
        width: 100%;
        padding: 10px;
        margin: 10px 0 20px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type=submit] {
        background: #28a745;
        color: #fff;
        padding: 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        font-size: 15px;
        font-weight: bold;
        transition: background 0.3s;
    }
    input[type=submit]:hover {
        background: #218838;
    }
    .center {
        text-align: center;
        margin-top: 20px;
    }
    .btn-new {
        display: inline-block;
        padding: 10px 18px;
        margin-top: 10px;
        background-color: #007bff;
        color: white;
        border-radius: 6px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s;
    }
    .btn-new:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h2>Add Food Item</h2>
        <form action="savefood" method="post">
            
            <!-- Food Name -->
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter Food Name" >
            
            <!-- Price -->
            <label for="price">Price</label>
            <input type="number" id="price" name="price" placeholder="Enter Price" >
            
            <!-- Quantity -->
            <label for="qty">Quantity</label>
            <input type="number" id="qty" name="qty" placeholder="Enter Quantity" >
            
            <!-- Submit -->
            <input type="submit" value="Add Food Item">
        </form>
        
        <!-- Home Button -->
        <div class="center">
            <a class="btn-new" href="home">🏠 HOME</a>
        </div>
    </div>
</body>
</html>
