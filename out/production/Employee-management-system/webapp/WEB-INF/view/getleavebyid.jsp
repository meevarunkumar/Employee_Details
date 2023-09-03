<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 18-05-2023
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Leave Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            margin-bottom: 20px;
        }

        .employee-info {
            margin-bottom: 10px;
        }
    </style>
    <style>
        .back-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
            background-color: #4CAF50;
            color: #fff;
            border-radius: 4px;
        }

        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Leave Details</h1>
    <div class="employee-info">
        <label>Name:</label>
        <span>${leave.name}</span>
    </div>
    <div class="employee-info">
        <label>Start Date:</label>
        <span>${leave.startDate}</span>
    </div>
    <div class="employee-info">
        <label>End Date:</label>
        <span>${leave.endDate}</span>
    </div>
    <div class="employee-info">
        <label>Reason:</label>
        <span>${leave.reason}</span>
    </div>
    <a class="back-button" href="javascript:history.back()">Back</a>
</div>
</body>
</html>

