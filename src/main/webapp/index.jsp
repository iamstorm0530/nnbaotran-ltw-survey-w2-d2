<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Email List</title>
  <link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body class="brg">
  <div class="form-card">
    <h1>Join our email list</h1>
    <p>Enter your name and email address below.</p>

    <form action="emailList" method="post">
      <label>First Name:</label>
      <input type="text" name="firstName" value="${param.firstName}" required><br>

      <label>Last Name:</label>
      <input type="text" name="lastName" value="${param.lastName}" required><br>

      <label>Email:</label>
      <input type="email" name="email" value="${param.email}" required><br>

      <input type="submit" value="Join Now" id="submit">
    </form>
  </div>
</body>
</html>
