<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 40px;
        }
        .profile-pic {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center mb-4">Employee List</h2>

    <table class="table table-bordered table-striped table-hover text-center align-middle shadow-sm">
        <thead class="table-dark">
            <tr>
                <th>Sr. No</th>
                <th>Profile Picture</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="emp" items="${employeeList}" varStatus="status">
                <tr>
                    <td>${status.count}</td>
                    <td>
                        <img src="${emp.profilePicUrl}" alt="Profile" class="profile-pic" onerror="this.src='user-avatar.png';">
                    </td>
                    <td>${emp.firstName}</td>
                    <td>${emp.lastName}</td>
                    <td>${emp.email}</td>
                </tr>	
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
