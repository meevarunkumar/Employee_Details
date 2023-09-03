<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 18-05-2023
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
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
    </style>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
    <style>
        .btn {
            padding: 6px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            border-radius: 4px;
            transition: background-color 0.3s;
            font-size: 14px;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
            border: none;
        }
        .btn-danger {
            background-color: #dc3545;
            color: white;
            border: none;
        }
    </style>
</head>
<body>
<h1>Employee List</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Designation</th>
        <th>Salary</th>
        <th>Actions</th>

    </tr>
    <c:forEach items="${employee}" var="employee">
        <tr>
            <td> <a class="employee-link" href="getById/${employee.eId}">${employee.eId}</a></td>
            <td>${employee.eName}</td>
            <td>${employee.eAdd}</td>
            <td>${employee.eDesignation}</td>
            <td>${employee.eSal}</td>
            <td>
                <a href="edit/${employee.eId}" class="btn btn-primary">Update</a>
                <a href="empdelete/${employee.eId}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
