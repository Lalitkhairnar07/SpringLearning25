<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Laptop</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4 text-center">Edit Laptop</h2>

        <form action="updatelaptop" method="post" class="p-4 shadow rounded bg-light">
            <div class="mb-3">
                <label for="modelName" class="form-label">Model Name</label>
                <input type="text" class="form-control" id="modelName" value="${x.modelName}" name="modelName" placeholder="Enter Laptop Model Name" >
            </div>

            <div class="mb-3">
                <label for="ram" class="form-label">RAM</label>
                <input type="text" class="form-control" id="ram" value="${x.ram}" name="ram" placeholder="Enter RAM (e.g. 8GB, 16GB)" >
            </div>

            <div class="mb-3">
                <label for="ssd" class="form-label">SSD</label>
                <input type="text" class="form-control" id="ssd" value="${x.ssd}" name="ssd" placeholder="Enter SSD Size (e.g. 256GB, 512GB)" >
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input type="number" class="form-control" id="price" value="${x.price}" name="price" placeholder="Enter Price" >
            </div>

			<input type="hidden" name="id">

            <button type="submit" class="btn btn-primary w-100">Update Laptop</button>
        </form>
    </div>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
