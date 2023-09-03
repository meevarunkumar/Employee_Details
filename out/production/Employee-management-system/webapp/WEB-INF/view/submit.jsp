<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 17-05-2023
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your registration is sucessfull</title>
</head>
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
    .get{
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        text-decoration: none;
        background-color: #4CAF50;
        color: #fff;
        border-radius: 4px;
    }
</style>
<body>
<h1>Your registration is successfull</h1>
<h1>

Your name is ${employee.eName} <br>
Your address is ${employee.eAdd} <br>
Your designation is ${employee.eDesignation} <br>
Your salary is ${employee.eSal}
</h1>
<a class="back-button" href="user">Back</a>
</body>
</html>
