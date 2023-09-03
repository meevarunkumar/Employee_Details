<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 17-05-2023
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>

<html>
<head>
    <title>Employee Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: antiquewhite;
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
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Employee Registration</h2>
    
    <%--@elvariable id="employee" type="com.ems"--%>
    <form:form action="submit" method="post" modelAttribute="employee">
    
        <label for="eName">EMPLOYEE NAME:</label>
        <input type="text" id="eName" name="eName" placeholder="Enter your  Name">
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
    <a href="get-employee" class="get">Get All Employees</a>
    <a href="getleaverest" class="get">Get All Leaves</a>
    <a href="submitform" class="get">Insert leaves</a>
</div>
</body>
</html>