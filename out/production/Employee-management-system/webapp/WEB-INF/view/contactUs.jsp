<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 13-06-2023
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <style>
        body {
            background-image: url("https://img.freepik.com/free-photo/top-view-chat-bubbles-with-telephone-receiver-copy-space_23-2148796078.jpg");
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f2f2f2;
            border-radius: 5px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-group textarea {
            resize: vertical;
            min-height: 100px;
        }

        .form-group button {
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Contact Us</h1>
    <form action="submitContactForm" method="post">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea>
        </div>
        <div class="form-group">
            <button type="submit">Submit</button>
        </div>
    </form>
</div>
</body>
</html>

