<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 12-06-2023
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Attendance List</title>
    <style>
        body {
            background-image: url("https://www.bettercloud.com/wp-content/uploads/bb-plugin/cache/academy-bg-landscape.png");
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            background-color: antiquewhite;
        }

        .container {
            width: 800px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 20px black;
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Attendance List</h2>
    <table>

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Date</th>
            <th>Status</th>
        </tr>

        <c:forEach items="${attendances}" var="attendance">

            <tr>
                <td>${attendance.id}</td>
                <td>${attendance.name}</td>
                <td>${attendance.date}</td>
                <td>${attendance.status}</td>
            </tr>

        </c:forEach>
    </table>
</div>

</body>
</html>
