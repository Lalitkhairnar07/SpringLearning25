<!DOCTYPE html>
<html>
<head>
<title>Reset Password</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
  <div class="card shadow p-4 mx-auto" style="max-width:400px;">
    <h4 class="text-center mb-3">Reset Password</h4>
    <form action="reset-password" method="post">
      <div class="mb-3">
        <label>Enter OTP</label>
        <input type="text" name="otp" class="form-control" required />
      </div>
      <div class="mb-3">
        <label>New Password</label>
        <input type="password" name="newPassword" class="form-control" required />
      </div>
      <button class="btn btn-success w-100">Reset Password</button>
    </form>
    <p class="text-success mt-3">${msg}</p>
    <p class="text-danger">${error}</p>
  </div>
</div>

</body>
</html>
