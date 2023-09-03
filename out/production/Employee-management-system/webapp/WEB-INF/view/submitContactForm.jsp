<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Form Submission</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70vh;
            background-image: url("https://wishes.photos/wp-content/uploads/2022/11/happy-new-year-beautiful-images-2023.webp");
            background-size: cover; /* Adjust the image size to cover the entire element */
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-top: 0;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }

        .success-message {
            text-align: center;
            color: #4CAF50;
            font-weight: bold;
        }

        .back-button {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Contact Form Submission</h1>

    <%-- Check if the form was successfully submitted --%>
    <c:if test="${submitted}">
        <div class="success-message">
            Thank you for your message! We will get back to you soon.
        </div>
    </c:if>
    <a class="back-button" href="javascript:history.back()">Go Back</a>
</div>
</body>
</html>
