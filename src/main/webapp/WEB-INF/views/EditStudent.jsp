<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    
    .span{
    	
    	color: red;
    }
    
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Edit Student</h2>
        <form action="updatestudent" method="post">
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name</label>
                <input type="text" class="form-control" id="firstName" name="firstName" value="${x.firstName}">
                
            </div>

            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name</label>
                <input type="text" class="form-control" id="lastName" name="lastName" value="${x.lastName}">
                
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="${x.email}">
                
            </div>

            <div class="mb-3">
                <label for="rollNo" class="form-label">Roll No</label>
                <input type="text" class="form-control" id="rollNo" name="rollNo" value="${x.rollNo}">
                
            </div>
            
            <input type="hidden" name="studentId"  value="${x.studentId}">

            <button type="submit" class="btn btn-primary">Update Student</button>
        </form>
    </div>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
