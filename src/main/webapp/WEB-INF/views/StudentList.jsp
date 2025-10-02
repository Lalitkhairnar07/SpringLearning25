<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
</style>
</head>
<body>

<div style="align-items: center;">
	<table border="1" class="center">
	    <thead>
	        <tr>
	        	<th>Student Id</th>
	            <th>First Name</th>
	            <th>Last Name</th>
	            <th>Email</th>
	            <th>Roll No</th>
	            <th>Action</th>
	        </tr>
	    </thead>
	    <tbody>
	        <c:forEach var="student" items="${students}">
	            <tr>
	            	<td>${student.studentId}</td>
	                <td>${student.firstName}</td>
	                <td>${student.lastName}</td>
	                <td>${student.email}</td>
	                <td>${student.rollNo}</td>
	                <td><a href="deletestudent?studentId=${student.studentId}">DELETE</a></td>
	                <td><a href="editstudent?studentId=${student.studentId}">Edit</a></td>
	                
	            </tr>
	        </c:forEach>
	    </tbody>
	</table>
</div>

<div class="center">

<a class="btn-new" href="home">HOME</a>

</div>
</body>
</html>