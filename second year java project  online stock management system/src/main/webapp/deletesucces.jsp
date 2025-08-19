<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Delete Successful</title>

    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>

<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card text-center shadow-lg" style="width: 24rem;">
        <div class="card-body">
            <!-- Success Icon -->
            <i class="fas fa-check-circle text-success" style="font-size: 4rem;"></i>
            <h1 class="card-title mt-3">Success!</h1>
            <p class="card-text">The record has been deleted successfully.</p>
            
            <!-- Button to go back or redirect -->
            <a href="home.jsp" class="btn btn-primary mt-3">
                <i class="fas fa-home"></i> Go Back to Home
            </a>
        </div>
    </div>
</div>

<!-- Bootstrap JS CDN and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
