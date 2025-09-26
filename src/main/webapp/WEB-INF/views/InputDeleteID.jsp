<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Laptop</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Delete Laptop by ID</h2>

        <!-- Change action to your servlet/controller -->
        <form action="deletelap" method="post">
            <div class="mb-3">
                <label for="laptopId" class="form-label">Laptop ID</label>
                <input type="text" class="form-control" id="id" name="id" placeholder="Enter Laptop ID">
            </div>
            <button type="submit" class="btn btn-danger">Delete</button>
        </form>
    </div>

    <!-- Bootstrap 5 JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
