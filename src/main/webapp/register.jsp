<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="main.css">
    <style>
        .form-container {
            width: 400px;
            margin: 50px auto;
            background: #fff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        .form-container h2 {
            text-align: center;
            color: teal;
            margin-bottom: 20px;
        }
        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .form-row label {
            flex: 0 0 120px; /* cố định label */
            font-weight: bold;
        }
        .form-row input[type="text"] {
            flex: 1;
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-row input[type="submit"] {
            margin-left: 120px;
            padding: 8px 16px;
            border: none;
            background: teal;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-row input[type="submit"]:hover {
            background: #006666;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Register</h2>
        <form action="register" method="post">
            <div class="form-row">
                <label>First Name:</label>
                <input type="text" name="firstName">
            </div>
            <div class="form-row">
                <label>Last Name:</label>
                <input type="text" name="lastName">
            </div>
            <div class="form-row">
                <label>Email:</label>
                <input type="text" name="email">
            </div>
            <input type="hidden" name="artist" value="<%= request.getParameter("artist") %>">
            <div class="form-row">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>
</body>
</html>
