<!DOCTYPE html>
<html>
<head>
<title>Forgot Password</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
  <div class="card shadow p-4 mx-auto" style="max-width:400px;">
    <h4 class="text-center mb-3">Forgot Password</h4>
    <form action="forgot-password" method="post">
      <div class="mb-3">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required />
      </div>
      <button class="btn btn-primary w-100">Send OTP</button>
    </form>
    <p class="text-success mt-3">${msg}</p>
    <p class="text-danger">${error}</p>
  </div>
</div>

</body>
</html>
