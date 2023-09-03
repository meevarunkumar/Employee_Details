<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 26-05-2023
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>insert leave</title>
    <style>
        body {
            background-image: url("https://blog.minopcloud.com/AssetsNew/images/post-img/2022/lg/Leave-Management-System-for-HR.jpg");
            font-family: Arial, sans-serif;
            background-color: skyblue;
        }

        .container {
            background-color: #D3D3D3;
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
            width: 400px;
            margin: 100px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 20px black;
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .container label {
            display: block;
            margin-bottom: 8px;
        }

        .container input[type="text"],
        .container input[type="email"],
        .container select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 12px;
        }

        .container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .container input[type="submit"]:hover {
            background-color: #45a049;
        }
        .container input[type=""]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 14px;
            margin-top: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    <%--@elvariable id="leave" type="com.ems.restleave.restmodel.Leave"--%>
    <form:form action="submitleave" method="post">

        <label for="name">Enter Your name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your  name">
        <form:errors path="name" cssClass="error"/><br> <br>

        <label for="startDate">LEAVE START DATE:</label>
        <input type="text" id="startDate" name="startDate" placeholder="Enter your  Start date">
        <form:errors path="startDate" cssClass="error"/><br> <br>
        <label for="endDate">LEAVE END DATE:</label>
        <input type="text" id="endDate" name="endDate" placeholder="Enter your  end date">
        <form:errors path="endDate" cssClass="error"/><br> <br>

        <label for="reason">LEAVE REASON:</label>
        <input type="text" id="reason" name="reason" placeholder="Enter your  leave reason">
        <form:errors path="reason" cssClass="error"/><br> <br>

        <input type="submit" value="Submit"> <br>
    </form:form>
</div>
</body>
</html>
