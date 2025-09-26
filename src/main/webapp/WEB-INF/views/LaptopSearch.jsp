<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Laptop Search</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f4f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    form {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 2px 10px rgba(0,0,0,0.2);
    }
    input[type="text"] {
        padding: 10px;
        width: 250px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        padding: 10px 15px;
        background: #007BFF;
        color: white;
        border: none;
        border-radius: 5px;
        margin-left: 10px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background: #0056b3;
    }
</style>
</head>
<body>

    <form action="searchlaptop" method="post">
        <label for="modelName">Enter Model Name:</label><br><br>
        <input type="text" name="modelName" id="modelName" >
        <input type="submit" value="Search">
    </form>

</body>
</html>
