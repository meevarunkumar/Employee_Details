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
    <title>Employee Details</title>
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
    <h1>Employee Details</h1>
    <div class="employee-info">
        <label>Employee Name:</label>
        <span>${employee.eName}</span>
    </div>
    <div class="employee-info">
        <label>Address:</label>
        <span>${employee.eAdd}</span>
    </div>
    <div class="employee-info">
        <label>Designation:</label>
        <span>${employee.eDesignation}</span>
    </div>
    <div class="employee-info">
        <label>Salary:</label>
        <span>${employee.eSal}</span>
    </div>
</div>
</body>
</html>

