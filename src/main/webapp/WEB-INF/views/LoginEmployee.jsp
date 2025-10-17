<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: #f7f9fb;
    font-family: Arial, sans-serif;
}
.login-container {
    max-width: 420px;
    margin: 80px auto;
    background: #fff;
    border-radius: 12px;
    padding: 30px 35px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
}
h2 {
    text-align: center;
    margin-bottom: 25px;
}
.btn-primary {
    width: 100%;
    border-radius: 30px;
}
.forgot {
    text-align: right;
    display: block;
    margin-top: 10px;
}
</style>
</head>

<body>
<div class="login-container">
    <h2>Employee Login</h2>

   

    <form action="login" method="post">
        <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required placeholder="Enter your email">
        </div>

        <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required placeholder="Enter your password">
        </div>

        <button type="submit" class="btn btn-primary">Login</button>

        <a href="forgot-password" class="forgot">Forgot Password?</a>
    </form>
</div>

</body>
</html>
