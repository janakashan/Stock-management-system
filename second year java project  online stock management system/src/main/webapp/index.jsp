<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('Image/img1.jpg');
            background-repeat: no-repeat; 
            background-size: cover; 
            background-position: center;
        }

        .feedback-container {
            background-color: #e2f3fa;
            padding: 30px;
            border-radius: 14px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 450px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 12px 0 5px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 95%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        textarea {
            height: 100px;
            resize: none;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #99b5e9;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        button:hover {
            background-color: #99b5e9;
        }

        #responseMessage {
            text-align: center;
            margin-top: 20px;
            color: #99b5e9;
        }
    </style>
   
</head>
<body>
    <div class="feedback-container">
        <form id="feedbackForm" action="insertfeedback" method="post" onsubmit="validateForm(event)">
            <h1>Feedback Form</h1>
            <fieldset>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Your name" style="background-color: #f1f8fb;" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Your email" style="background-color: #f1f8fb;" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" placeholder="Your feedback" style="background-color: #f1f8fb;" required></textarea>

                <input type="submit" name="submit" value="Submit Feedback" style="background-color: #1577a0; color: white; padding: 12px 24px; border: none; border-radius: 4px; font-size: 16px; cursor: pointer; transition: background-color 0.3s ease;">
            </fieldset>
        </form>
        <br>
        <a href="success.jsp">
            <input type="button" value="View Feedback" style="background-color: #1577a0; color: white; padding: 12px 24px; border: none; border-radius: 4px; font-size: 16px; cursor: pointer; transition: background-color 0.3s ease;">
        </a>
    </div>
</body>
</html>
