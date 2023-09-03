<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 12-06-2023
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Employee Management System</title>
    <style>
        /* Reset default styles */
        body, ul {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
        }
        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Navigation bar */
        nav {
            background-color: #333;
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        nav li {
            float: left;
        }
        nav li a {
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        nav li a:hover {
            background-color: #555;
        }

        /* Dashboard content */
        .dashboard-header {
            background-color: #333;
            padding: 20px;
            color: #fff;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .dashboard-header h2 {
            margin: 0;
        }
        .dashboard-overview {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }
        .overview-item {
            width: calc(33.33% - 20px);
            background-color: #fff;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }
        .overview-item:hover {
            transform: translateY(-5px);
        }
        .overview-item h3 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #333;
        }
        .overview-item p {
            color: #555;
            font-size: 16px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Dashboard - Employee Management System</h1>
    <nav>
        <ul>
            <li><a href="admin">Home</a></li>
        </ul>
    </nav>
    <div class="dashboard-header">
        <h2>Welcome, Admin</h2>
    </div>
    <div class="dashboard-overview">
        <div class="overview-item">
            <h3>Total Employees</h3>
            <p>Total Employees: ${employeeCount}</p>
        </div>
        <div class="overview-item">
            <h3>Absent Today</h3>
            <p>2</p>
        </div>
        <div class="overview-item">
            <h3>Upcoming Birthdays</h3>
            <p>2</p>
        </div>
    </div>
</div>
</body>
</html>
