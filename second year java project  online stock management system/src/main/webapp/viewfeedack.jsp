<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.feedback.Feedback" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Management</title>
    <style>
        body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
    font-family: Arial, sans-serif;
    background-image: url('Image/feedback1.png'); 
     background-repeat: no-repeat; 
    background-size: cover; 
    background-position: center;
}

.container {
    background-color: #e2f3fa; 
    padding: 50px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    width: 300px; 
    text-align: left; 
}
    </style>
</head>
<body>


<%
    List<Feedback> fedDetails = (List<Feedback>) request.getAttribute("fedDetails");

    if (fedDetails != null) {
        for (Feedback fed : fedDetails) {
            int id = fed.getId();
            String name = fed.getName();
            String email = fed.getEmail();
            String message = fed.getMassage();
%>
<div class="container">
    <center><h2>Feedback</h2></center>
    
    <div class="feedback-details">
        <p> <%= name %></p>
        <p><%= email %></p>
        <p><%= message %></p>
    </div>


    <a href="updatefeedback.jsp?id=<%= id %>&name=<%= name %>&email=<%= email %>&message=<%= message %>">
        <input type="button" name="update" value="Update Feedback" style ="background-color:#1577a0; color: white;  padding: 5px 10px; border: none; border-radius: 4px; font-size: 16px; cursor: pointer;  transition: background-color 0.3s ease;">
    </a>

    <a href="deletefeedback.jsp?id=<%= id %>&name=<%= name %>&email=<%= email %>&message=<%= message %>">
        <input type="button" name="delete" value="Delete Feedback" style ="background-color:#1577a0; color: white;  padding: 5px 10px; border: none; border-radius: 4px; font-size: 16px; cursor: pointer;  transition: background-color 0.3s ease;">
    </a>
</div>

<%
        } // end of for loop
    } else {
        out.println("No feedback details available.");
    }
%>


</body>
</html>
