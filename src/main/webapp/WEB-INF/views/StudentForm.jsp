<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
        }
        .form-title {
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
            color: #0d6efd;
        }
        .btn-custom {
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2 class="form-title">Student Registration Form</h2>
        <form action="studentdata" method="post">
            <!-- Student Name -->
            <div class="mb-3">
                <label for="studentName" class="form-label">Full Name</label>
                <input type="text" name="studentName" id="studentName" class="form-control" placeholder="Enter full name" >
            </div>
            <div class="text-danger">${nameError}</div>

            <!-- Email -->
            <div class="mb-3">
                <label for="studentEmail" class="form-label">Email</label>
                <input type="email" name="studentEmail" id="studentEmail" class="form-control" placeholder="Enter email" >
            </div>
            <div class="text-danger">${emailError}</div>

            <!-- Phone -->
            <div class="mb-3">
                <label for="studentPhone" class="form-label">Phone</label>
                <input type="text" name="studentPhone" id="studentPhone" class="form-control" placeholder="Enter phone number" >
            </div>
            <div class="text-danger">${phoneError}</div>

            <!-- Gender -->
            <div class="mb-3">
                <label class="form-label">Gender</label><br>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" id="male" value="Male" >
                    <label class="form-check-label" for="male">Male</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" id="female" value="Female">
                    <label class="form-check-label" for="female">Female</label>
                </div>
            </div>
            <div class="text-danger">${genderError}</div>

            <!-- City -->
            <div class="mb-3">
                <label for="studentCity" class="form-label">City</label>
                <select name="studentCity" id="studentCity" class="form-select" >
                    <option value="">-- Select City --</option>
                    <option value="Mumbai">Mumbai</option>
                    <option value="Delhi">Delhi</option>
                    <option value="Pune">Pune</option>
                    <option value="Bangalore">Bangalore</option>
                </select>
            </div>
            <div class="text-danger">${cityError}</div>

            <!-- Address -->
            <div class="mb-3">
                <label for="studentAddress" class="form-label">Address</label>
                <textarea name="studentAddress" id="studentAddress" class="form-control" rows="3" placeholder="Enter address"></textarea>
            </div>
            <div class="text-danger">${addressError}</div>

            <!-- Submit -->
            <button type="submit" class="btn btn-primary btn-custom">Submit</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
