<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food Items List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #fafafa;
    }
    table {
        border-collapse: collapse;
        width: 70%;
        margin: 20px auto;
        box-shadow: 0px 2px 6px rgba(0,0,0,0.1);
    }
    th, td {
        border: 1px solid #ddd;
        padding: 10px 14px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #f9f9f9;
    }
    .action-links a {
        margin: 0 8px;
        text-decoration: none;
        font-weight: bold;
    }
    .action-links a.delete {
        color: red;
    }
    .action-links a.edit {
        color: blue;
    }
    .empty-row td {
        text-align: center;
        font-style: italic;
        color: gray;
        padding: 15px;
    }
    .center {
        text-align: center;
        margin-top: 20px;
    }
    .btn-new {
        display: inline-block;
        padding: 10px 18px;
        margin: 5px;
        background-color: #4CAF50;
        color: white;
        border-radius: 6px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s;
    }
    .btn-new:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<h2 style="text-align:center;">Food Items</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Qty</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${items}" var="i">
        <tr>
            <td>${i.foodItemId}</td>
            <td>${i.name}</td>
            <td>${i.price}</td>
            <td>${i.qty}</td>
            <td class="action-links">
                <a href="deletefooditem?foodItemId=${i.foodItemId}" class="delete">DELETE</a>
                <a href="editfooditem?foodItemId=${i.foodItemId}" class="edit">EDIT</a>
            </td>
        </tr>
    </c:forEach>

    <c:if test="${empty items}">
        <tr class="empty-row">
            <td colspan="5">No items available</td>
        </tr>
    </c:if>
</table>

<div class="center">
    <a class="btn-new" href="addfood">➕ Add New Food</a>
    <a class="btn-new" href="home">🏠 HOME</a>
</div>

</body>
</html>
