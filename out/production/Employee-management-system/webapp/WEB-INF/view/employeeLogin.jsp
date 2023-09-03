<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Trainee
  Date: 06-06-2023
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head><title>Login</title></head>
<style>
    body {
        background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWvYPGmdLWr3bb8hVhzcJo5aMB-171xMvbPN0Clgi9uZiLefuTDV5cUwi976PqLzPLW5w&usqp=CAU");
        background-size: cover; /* Adjust the image size to cover the entire element */
        background-repeat: no-repeat;
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }

    center {
        margin-top: 100px;
    }

    h1 {
        color: #008b8b;
        font-size: 50px;
        margin-bottom: 20px;
    }

    table {
        font-size: medium;
        border-collapse: collapse;
        margin-top: 20px;
    }

    td {
        padding: 8px;
    }

    input[type="text"],
    input[type="password"] {
        width: 200px;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"],
    input[type="reset"] {
        padding: 8px 20px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: #45a049;
    }

    font[color="red"] {
        color: red;
    }

    font[color="#008b8b"] {
        color: #008b8b;
    }
</style>
<body>
<center>
    <h1>Login Page</h1>

    <c:if test="${error eq 'true'}"> <font color="red">${msg}</font></c:if>

    <font color="#008b8b">${logOutMsg} </font>

    <form name='loginForm'  action="${pageContext.request.contextPath}/login" method='POST' class="form">

        <table>
            <tr>
                <td>User Name:</td>
                <td><input type='text' name='userName' value='' placeholder="Enter User Name">
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='password' placeholder="Enter Password" />
                </td>
            </tr>
            <tr>
                <td><input name="submit" type="submit"
                           value="submit" />
                </td>
                <td><input name="reset" type="reset" />
                </td>
            </tr>
        </table>

    </form>

    <br>
</center>
</body>
</html>
