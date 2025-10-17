<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card {
            border-radius: 20px;
            backdrop-filter: blur(15px);
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border: 1px solid rgba(255, 255, 255, 0.2);
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
            cursor: pointer;
        }
        .links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow-lg p-4" style="width: 400px;">
        <h2 class="text-center mb-4 fw-bold">Welcome Back</h2>
        <form action="authenticate" method="post">
            
            <div class="mb-3 input-group">
                <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
            </div>
            
            <div class="mb-3 input-group">
                <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            </div>

            <button type="submit" class="btn btn-primary w-100 mb-2 btn-custom">Login</button>
        </form>

        <div class="links">
            <a href="signup">Sign Up</a> | <a href="forgot-password">Forgot Password?</a>
        </div>
    </div>
</div>

<!-- Bootstrap 5 JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
