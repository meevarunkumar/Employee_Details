<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 12-06-2023
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Form</title>
    <style>
        body {
            background-image: url("https://www.shutterstock.com/image-photo/on-white-background-notebook-text-260nw-2155288851.jpg");
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
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

        .container input[type="date"],
        .container input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 12px;
        }

        .container input[type="submit"],
        .container .get-attendance-list {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: inline-block;
            margin-right: 10px;
            text-decoration: none;
        }

        .container input[type="submit"]:hover,
        .container .get-attendance-list:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Attendance Form</h2>
    <form action="attendances" method="post">
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required><br><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="status">Status:</label>
        <input type="text" id="status" name="status" required><br>
        <input type="submit" value="Submit"><br><br>
    </form>
    <a class="get-attendance-list" href="list">Get Attendance List</a><br><br>
</div>
</body>
</html>
