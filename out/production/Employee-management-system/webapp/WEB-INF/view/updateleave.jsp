<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 19-05-2023
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: antiquewhite;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        form {
            width: 400px;
            margin: 0 auto;
        }

        label {
            display: inline-block;
            width: 100px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 250px;
            padding: 5px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 8px 16px;
            font-size: 14px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        input[readonly] {
            background-color: #eee;
            cursor: not-allowed;
        }

    </style>
</head>
<body>
<h1>Update Leaves</h1>
<form action="updateleave" method="post">
    <label for="name">Id:</label>
    <input name="id" value="${leave.id}"  readonly/> <br>
    <label for="name">Start Date:</label>
    <input type="text" id="name" name="startDate" value="${leave.startDate}" /><br/>
    <label for="name">End Date:</label>
    <input type="text" id="endDate" name="endDate" value="${leave.endDate}" /><br/>
    <label for="reason">Reason:</label>
    <input type="text" id="reason" name="reason" value="${leave.reason}" /><br/>
    <input type="submit" value="update" />
</form>
</body>
</html>
