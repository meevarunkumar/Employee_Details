<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 11-06-2023
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body {
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWvYPGmdLWr3bb8hVhzcJo5aMB-171xMvbPN0Clgi9uZiLefuTDV5cUwi976PqLzPLW5w&usqp=CAU");
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            text-align: center;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .switch {
            text-align: center;
            margin-top: 10px;
        }

        .switch a {
            color: blue;
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Sign Up</h1>
    <form action="submit" method="post">
        <div class="form-group">
            <label for="name">name</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="DOB">dob</label>
            <input type="text" id="DOB" name="dob" required>
        </div>
        <div class="form-group">
            <label for="gender">gender</label>
            <input type="text" id="gender" name="gender" required>
        </div>
        <div class="form-group">
            <label for="address">address</label>
            <input type="text" id="address" name="address" required>
        </div>
        <div class="form-group">
            <label for="city">city</label>
            <input type="text" id="city" name="city" required>
        </div>   <div class="form-group">
            <label for="state">state</label>
            <input type="text" id="state" name="state" required>
        </div>   <div class="form-group">
            <label for="emailid">emailid</label>
            <input type="text" id="emailid" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit" class="btn">Sign Up</button>
    </form>
    <div class="switch">
        <p>Already have an account? <a href="login">Login</a></p>
    </div>
    <br>
    <button onclick="goBack()">Back</button>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</div>
</body>
</html>
