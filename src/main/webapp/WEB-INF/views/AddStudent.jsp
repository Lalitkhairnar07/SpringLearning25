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
        <h2 class="mb-4">Add Student</h2>
        <form action="savestudent" method="post">
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name</label>
                <input type="text" class="form-control" id="firstName" name="firstName" >
                <span class="span"> ${result.getFieldError("firstName").getDefaultMessage()}</span>
            </div>

            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name</label>
                <input type="text" class="form-control" id="lastName" name="lastName" >
                <span class="span"> ${result.getFieldError("lastName").getDefaultMessage()} </span>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" >
                <span class="span">${result.getFieldError("email").getDefaultMessage()}</span>
            </div>

            <div class="mb-3">
                <label for="rollNo" class="form-label">Roll No</label>
                <input type="text" class="form-control" id="rollNo" name="rollNo" >
                 <span class="span">${result.getFieldError("rollNo").getDefaultMessage()}</span>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
