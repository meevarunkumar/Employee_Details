<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 11-06-2023
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management System</title>
    <style>
        /* Reset default styles */
        body, ul {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            background-image: url("https://www.proofhub.com/articles/wp-content/uploads/2021/08/Employee-Management-System-Apps.png");
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
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
            background-color: black;
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

        /* Hero section */
        .hero {
            background-size: cover;
            background-position: center;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            text-align: center;
        }
        .hero h2 {
            font-size: 32px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .hero p {
            font-size: 18px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }

        /* Features section */
        .features {
            margin-top: 30px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .feature {
            width: calc(33.33% - 20px);
            background-color: #fff;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            transition: transform 0.3s;
        }
        .feature:hover {
            transform: translateY(-5px);
        }
        .feature h3 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #333;
        }
        .feature p {
            color: #555;
            font-size: 16px;
        }

        /* Footer section */
        footer {
            text-align: center;
            margin-top: 305px;
            padding: 10px 0;
            background-color: #333;
            color: #fff;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to the Employee Management System</h1>
    <nav>
        <ul>
            <li><a href="./">Home</a></li>
            <li><a href="login">Employees</a></li>
            <li><a href="aboutUs">About Us</a></li>
            <li><a href="contactUs">Contact Us</a></li>
            <li><a href="login">Login</a></li>
            <li><a href="signup">Sign up</a></li>
        </ul>
    </nav>
    <div class="hero">
    </div>
    <div class="features">

    </div>
</div>
<footer>
    &copy; 2023 Your Company. All rights reserved.
</footer>
</body>
</html>


