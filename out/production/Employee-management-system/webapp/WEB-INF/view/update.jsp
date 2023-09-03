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
<h1>Update Employee</h1>
<form action="update" method="post">
    <label for="name">Id:</label>
    <input name="eId" value="${employee.eId}"  readonly/> <br>
    <label for="name">Name:</label>
    <input type="text" id="name" name="eName" value="${employee.eName}"  /><br/>
    <label for="name">Address:</label>
    <input type="text" id="add" name="eAdd" value="${employee.eAdd}" /><br/>
    <label for="designation">Designation:</label>
    <select id="designation" name="eDesignation">
        <option value="Manager" ${employee.eDesignation == 'Manager' ? 'selected' : ''}>Manager</option>
        <option value="Developer" ${employee.eDesignation == 'Developer' ? 'selected' : ''}>Developer</option>
        <option value="Designer" ${employee.eDesignation == 'Designer' ? 'selected' : ''}>Designer</option>
    </select><br/>
    <label for="salary">Salary:</label>
    <input type="text" id="salary" name="eSal" value="${employee.eSal}" /><br/>
    <input type="submit" value="update" />
</form>
</body>
</html>
