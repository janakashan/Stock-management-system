<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>

/* General resets */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
     background-image: url('Image/online stock management.png');
     background-repeat: no-repeat;
     background-attachment: fixed;
     background-size: 100% 100%;
}

/* Navigation bar styling */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #fff2d7;
    padding: 10px 20px;
}

/* Logo on the left side */
.nav-logo {
    color: #fff;
    text-decoration: none;
    font-size: 24px;
    font-weight: bold;
}

/* Center links */
.navbar-center {
    display: flex;
    gap: 20px;
}

.nav-link {
    color:#2C3E50;
    text-decoration: none;
    font-size: 18px;
    padding: 10px;
    transition: background 0.3s;
}

/* Hover effect for navigation links */
.nav-link:hover {
    background-color: white;
    border-radius: 5px;
}

/* Right side links */
.navbar-right {
    display: flex;
    gap: 15px;
}

/* Responsive design */
@media screen and (max-width: 850px) {
    .navbar {
        flex-direction: column;
    }

    .navbar-center {
        margin: 10px 0;
    }
}
h1 {
    text-align: center;
    margin-bottom: 20px;
    color#5D9CEC;
    font-size: 40px;
}

h4 {
    
    margin-bottom: 20px;
    color :#5D9CEC;
    font-size: 15px;
}

h2 {
    
    margin-bottom: 20px;
    color :#1F3A93;
    font-size: 60px;
}

p {
    
    margin-bottom: 20px;
    color :#6E6E6E;
    font-size: 20px;
}

</style>
</head>
<body>



<nav class="navbar">
       
        <div class="navbar-left">
           <img src="Image/logo.jpg" alt="logo" style="width:50px;height:60px;">
        </div>
        
       
        <div class="navbar-center">
            <a href="#" class="nav-link">home</a>
            <a href="#" class="nav-link">Stock In</a>
            <a href="#" class="nav-link">cart</a>
            <a href="index.jsp" class="nav-link">Feedback</a>
        </div>

       
        <div class="navbar-right">
            <a href="#" class="nav-link">Login</a>
            <a href="#" class="nav-link">Sign In</a>
            <a href="#" class="nav-link">Profile</a>
        </div>
    </nav>

<dev>
    <h1> online stock managment System </h1>

	<dev class="body"> <br>
	<br>
	<h4>ONLINE STOCK MANAGEMENT SOFTWARE</h4>
	<h2>Stay stocked for</h2>
	<h2>success</h2>
	<p>
		Inventory tracking can be time-consuming for <br> many small and
		medium-sized <br>businesses. QuickBooks <br>helps you
		effectively<br> manage your stock, <br>so you always know <br>what
		you have and<br> what you need before you even<br> need it.
	</p>
	<br>
	</dev>
</dev>
</body>
</html>