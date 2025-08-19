<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body {
    
    background-image: url('Image/fed4.jpg');
    background-repeat: no-repeat; 
    background-size: cover; 
    background-position: center;
    
 </style>
</head>
<body>

  <%
     String id = request.getParameter("id");
     String name = request.getParameter("name");
    String email = request.getParameter("email");
    String message = request.getParameter("message");

    %>  
    
   <center> <h1>chang your fedback</h1></center>
    <br> <br> <br> <br> <br> 
  <center>
   <form action ="updateFeedback" method ="post">
   
   
       ID <input type = "text" name ="id" value ="<%= id %>" style="width: 25%; padding: 12px 20px; display: inline-block; 
  border: 1px solid #ccc;border-radius: 10px; box-sizing: border-box; margin: 8px 0;"><br>
      Name <input type = "text" name ="name" value ="<%= name %>"style="width: 25%; padding: 12px 20px; display: inline-block; 
  border: 1px solid #ccc;border-radius: 10px; box-sizing: border-box; margin: 8px 0;"><br>
      E- mail <input type = "text" name ="email" value ="<%= email%>"style="width: 25%; padding: 12px 20px; display: inline-block; 
  border: 1px solid #ccc;border-radius: 10px; box-sizing: border-box; margin: 8px 0;"><br>
      Message <input type = "text" name ="message" value ="<%= message%>"style="width: 25%; padding: 12px 20px; display: inline-block; 
  border: 1px solid #ccc;border-radius: 10px; box-sizing: border-box; margin: 8px 0;"><br>
 
   
      <input type = "submit" name ="submit" value ="update feedback"  style ="background-color:#1577a0; color: white;  padding: 12px 24px; border: none; border-radius: 4px; font-size: 16px; cursor: pointer;  transition: background-color 0.3s ease;"><br>
      
    </form>
    
   </center>
   
</body>
</html>