<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body class="brg">
  <div class="form-card">
    <h1>Register</h1>

    <form action="register" method="post">
      <label for="firstName">First Name:</label>
      <input type="text" id="firstName" name="firstName" value=""><br>
      
      <label for="firstName">Last Name:</label>
      <input type="text" id="lastName" name="lastName" value=""><br>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" value=""><br>

      <input type="submit" value="Submit" id="submit">
    </form>

    <form action="index.jsp" method="get" style="margin-top:15px;">
      <input type="submit" value="Back" id="submit">
    </form>
  </div>
</body>
</html>
