<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .details-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
        }
        .details-title {
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
            color: #0d6efd;
        }
        .detail-item {
            margin-bottom: 10px;
            padding: 10px;
            border-bottom: 1px solid #dee2e6;
        }
        .detail-label {
            font-weight: bold;
            color: #495057;
        }
        .detail-value {
            color: #212529;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="details-container">
        <h2 class="details-title">Student Details</h2>

        <div class="detail-item">
            <span class="detail-label">Name: </span>
            <span class="detail-value">${studentName}</span>
        </div>
        <div class="detail-item">
            <span class="detail-label">Email: </span>
            <span class="detail-value">${studentEmail}</span>
        </div>
        <div class="detail-item">
            <span class="detail-label">Phone: </span>
            <span class="detail-value">${studentPhone}</span>
        </div>
        <div class="detail-item">
            <span class="detail-label">Gender: </span>
            <span class="detail-value">${gender}</span>
        </div>
        <div class="detail-item">
            <span class="detail-label">City: </span>
            <span class="detail-value">${studentCity}</span>
        </div>
        <div class="detail-item">
            <span class="detail-label">Address: </span>
            <span class="detail-value">${studentAddress}</span>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
