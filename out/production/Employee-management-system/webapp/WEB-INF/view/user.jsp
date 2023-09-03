<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 12-06-2023
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Home Page</title>
    <style>
        body {
            background-image: url("https://wallpaperaccess.com/full/4321838.jpg");
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 0px;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #45a049;
        }

        .container {
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
            color: white;
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }
        select option[value=""] {
            font-weight: bold;
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
        .error {
            color: red;
            font-size: 14px;
            margin-top: 5px;
        }
        .container .get {
            display: inline-block;
            padding: 8px 12px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 20px;
            margin-bottom: 10px;
        }

        .container .get:hover {
            background-color: #45a049;
        }

        .container .get + .get {
            margin-left: 10px;
        }        .logout {
                     float: right;
                 }
    </style>
</head>
<body>
<div class="navbar">
    <a href="./">Home</a>
    <a href="submitform">Apply Leaves</a>
    <a href="getMyDetails/${name}">Get My Details</a>
    <a href="updateMyDetails/${name}">Edit My Details</a>
    <a href="#">${name}</a>
    <li class="logout"><a href="logout">Log out</a></li>


</div>

<div class="container">
    <h5>Hii ${name} Please Fill Your Details Here</h5>

    <%--@elvariable id="employee" type="com.ems"--%>
    <form:form action="submit" method="post" modelAttribute="employee">

        <label for="eName">EMPLOYEE NAME:</label>
        <input type="text" id="eName" name="eName" value="${name}" readonly>
        <form:errors path="eName" cssClass="error"/><br> <br>
        <label for="eAdd">Employee Address:</label>
        <input type="text" id="eAdd" name="eAdd" placeholder="Enter your Address">
        <form:errors path="eAdd" cssClass="error"/><br> <br>

        <select id="eDesignation" name="eDesignation">
            <option value="">Employee Designation</option>
            <option value="java developer">JAVA DEVELOPER</option>
            <option value="PYTHON DEVELOPER">PYTHON DEVELOPER</option>
            <option value="C++ DEVELOPER">C++ DEVELOPER</option>
        </select>
        <form:errors path="eDesignation" cssClass="error"/><br> <br>

        <label for="esal">Employee Salary:</label>
        <input type="text" id="esal" name="eSal" placeholder="Enter your salary">
        <form:errors path="eSal" cssClass="error"/><br><br>
        <input type="submit" value="Submit"> <br>
    </form:form>
</div>
</body>
</html>
