<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: white;
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 300px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], input[type="email"] {
	width: 100%;
	padding: 8px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}

.success-message {
	color: green;
	text-align: center;
	margin-top: 20px;
	font-weight: bold;
}
</style>

</head>
<body>

	<div style="background-color: red;width: 900px;height: 800px ;margin: auto">
      <div style="background-color: #c8f8e5; width:900px; height:200px ; display: flex;
      justify-content :center;  align-items: center; ">

         <center><h1  style =" font-size: 40px;"> success!</h1></center>
        
      </div>
      <div style="background-image: url('Image/succ.jpg'); width:900px; height:700px ;display: flex; justify-content: center;  align-items: center;  ">

        <div class="form-container">
      
       
          <form id="feedbackForm"  action ="selectfeedback" method ="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required> 
            <label for="email">Email:</label> 
            <input type="email" id="email" name="email" required>
      
            <input type="submit"value ="view feedback" style ="background-color:#1577a0; color: white;  padding: 12px 24px; border: none; border-radius: 4px; font-size: 16px; cursor: pointer;  transition: background-color 0.3s ease;" >
          </form>
      
      
      
        </div>
    
   </div>
    </div>
        
    
</body>
</html>