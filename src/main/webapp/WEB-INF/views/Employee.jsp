<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 400px;
        margin: 50px auto;
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        padding: 30px;
    }
    h2 {
        text-align: center;
        color: #333;
    }
    label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
    }
    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="file"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        margin-top: 20px;
        background: #007bff;
        color: white;
        border: none;
        padding: 10px;
        width: 100%;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background: #0056b3;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Add Employee</h2>
    <form action="saveemployee" method="post" enctype="multipart/form-data">
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" id="firstName" required>

        <label for="lastName">Last Name:</label>
        <input type="text" name="lastName" id="lastName" required>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>

        <label for="profilePic">Profile Picture:</label>
        <input type="file" name="profilePic" id="profilePic" accept="image/*" >

        <input type="submit" value="Add Employee">
    </form>
</div>

</body>
</html>
