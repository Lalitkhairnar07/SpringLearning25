<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup Page</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            height: 100vh;
            margin: 0;
        }
        .card {
            border-radius: 20px;
            backdrop-filter: blur(15px);
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }
        .form-label {
            font-weight: 500;
        }
        .form-control {
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.9);
        }
        .form-control:focus {
            box-shadow: 0 0 8px rgba(255, 255, 255, 0.6);
            border-color: #fff;
        }
        .btn-custom {
            border-radius: 12px;
            transition: 0.3s;
        }
        .btn-custom:hover {
            transform: translateY(-2px);
            box-shadow: 0px 5px 15px rgba(0,0,0,0.3);
        }
        .input-group-text {
            border-radius: 10px 0 0 10px;
            background: #f8f9fa;
        }
        .links {
            text-align: center;
            margin-top: 15px;
        }
        .links a {
            margin: 0 10px;
            font-weight: 500;
            color: #fff;
            text-decoration: none;
        }
        .links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow-lg p-4" style="width: 400px;">
        <h2 class="text-center mb-4 fw-bold">Create Account</h2>
        <form action="saveuser" method="post">
            
            <!-- First Name -->
            <div class="mb-3 input-group">
                <span class="input-group-text"><i class="bi bi-person"></i></span>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name" >
            </div>
            <div class="text-danger">${firstNameError}</div>
            
            <!-- Last Name -->
            <div class="mb-3 input-group">
                <span class="input-group-text"><i class="bi bi-person"></i></span>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name" >
            </div>
            <div class="text-danger">${lastNameError}</div>
            
            <!-- Email -->
            <div class="mb-3 input-group">
                <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email Address" >
            </div>
            <div class="text-danger">${emailError}</div>
            
            <!-- Password -->
            <div class="mb-3 input-group">
                <span class="input-group-text"><i class="bi bi-lock"></i></span>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" >
            </div>
            <div class="text-danger">${passwordError}</div>
            
            <!-- Gender Radio Buttons -->
            <div class="mb-3">
                <label class="form-label">Gender:</label><br>
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
            
            <!-- City Dropdown -->
            <div class="mb-3">
                <label for="city" class="form-label">City:</label>
                <select class="form-select" id="city" name="city" >
                    <option value="" selected disabled>Select your city</option>
                    <option value="Surat">Surat</option>
                    <option value="Ahmedabad">Ahmedabad</option>
                    <option value="Himmatnagar">Himmatnagar</option>
                    <option value="Gandhinagar">Gandhinagar</option>
                </select>
            </div>
            <div class="text-danger">${cityError}</div>

            <button type="submit" class="btn btn-success w-100 btn-custom mb-2">Sign Up</button>
        </form>

        <div class="links">
            <a href="signin">Back to Login</a>
        </div>
    </div>
</div>

<!-- Bootstrap 5 JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
