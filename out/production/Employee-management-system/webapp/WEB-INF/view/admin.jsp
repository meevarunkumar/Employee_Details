<!DOCTYPE html>
<html>
<head>
    <title>Admin Page - Employee Management System</title>
    <style>
        /* Reset default styles */
        body, ul {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            background-image: url("https://www.whatsappimages.in/wp-content/uploads/2022/03/Beautiful-White-Background-Images-pics-for-download-3.jpg");
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
        }
        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Navigation bar */
        nav {
            background-color: #333;
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        nav li {
            float: left;
        }
        nav li a {
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        nav li a:hover {
            background-color: #555;
        }

        /* Admin page content */
        .admin-content {
            display: flex;
            justify-content: space-between;
        }
        .admin-sidebar {
            width: 200px;
            background-color: #f1f1f1;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .admin-sidebar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        .admin-sidebar li {
            margin-bottom: 10px;
        }
        .admin-sidebar li a {
            display: block;
            color: #333;
            text-decoration: none;
            transition: color 0.3s;
        }
        .admin-sidebar li a:hover {
            color: #555;
        }
        .admin-main {
            flex-grow: 1;
            background-color: #fff;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .admin-main h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .admin-main p {
            color: #555;
        }
        .logout {
            float: right;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Admin Page - Employee Management System</h1>
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li class="logout"><a href="./">Log out</a></li>
        </ul>
    </nav>
    <div class="admin-content">
        <div class="admin-sidebar">
            <ul>
                <li><a href="dashboard">Dashboard</a></li>
                <li><a href="get-employee">Get Employee</a></li>
                <li><a href="getleaverest">Get Employee Leave</a></li>
                <li><a href="attendance">Add Attendance</a></li>
                <li><a href="aboutUs">About Us</a></li>
                <li><a href="contactUs">Contact Us</a></li>
            </ul>
        </div>
        <div class="admin-main">
            <h2>Welcome, Admin</h2>
            <p>Select an option from the sidebar to manage employee-related functionalities.</p>
        </div>
    </div>
</div>
</body>
</html>
