<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add TV</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .form-container {
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 400px;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        label {
            display: block;
            font-weight: bold;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .btn-submit {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background: #007bff;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn-submit:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add TV</h2>
        <form action="savetv" method="post">
            <label for="modelName">Model Name:</label>
            <input type="text" id="modelName" name="modelName" >

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" >

            <label for="qty">Quantity:</label>
            <input type="number" id="qty" name="qty" >

            <label for="brand">Brand:</label>
            <input type="text" id="brand" name="brand" >

            <label for="inch">Size (inch):</label>
            <input type="number" id="inch" name="inch" >

            <button type="submit" class="btn-submit">Add TV</button>
            <a class="btn-new" href="home">HOME</a>
        </form>
    </div>
</body>
</html>
