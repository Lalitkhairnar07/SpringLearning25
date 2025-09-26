<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Laptop List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        margin: 0;
        padding: 20px;
    }

    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }

    table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
        background: #fff;
        box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
    }

    th {
        background-color: #007BFF;
        color: white;
        font-weight: bold;
        text-transform: uppercase;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f7ff;
    }

    a {
        text-decoration: none;
        padding: 6px 12px;
        border-radius: 4px;
        font-size: 14px;
    }

    a[href*="deletelaptop"] {
        background-color: #dc3545;
        color: white;
    }

    a[href*="deletelaptop"]:hover {
        background-color: #c82333;
    }

    .btn-new {
        display: inline-block;
        margin: 20px auto;
        background-color: #28a745;
        color: white;
        padding: 10px 18px;
        border-radius: 5px;
        font-size: 15px;
        font-weight: bold;
        text-align: center;
    }

    .btn-new:hover {
        background-color: #218838;
    }

    .center {
        text-align: center;
    }
</style>
</head>
<body>
	<h2>List of Laptops</h2>

	<table>
		<tr>
			<th>Laptop Id</th>
			<th>Model Name</th>
			<th>Price</th>
			<th>RAM</th>
			<th>SSD</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${laptops}" var="l">
			<tr>
				<td>${l.id}</td>
				<td>${l.modelName}</td>
				<td>${l.price}</td>
				<td>${l.ram}</td>
				<td>${l.ssd}</td>
				<td><a href="deletelaptop?id=${l.id}">Delete</a></td>
				<td><a href="detail?id=${l.id}">View</a></td>
				<td><a href="editlaptop?id=${l.id}">Edit</a></td>
				
			</tr>
		</c:forEach>
	</table>

	<div class="center">
		<a class="btn-new" href="newlaptop">➕ Add New Laptop</a>
		<a class="btn-new" href="home">HOME</a>
	</div>
</body>
</html>
