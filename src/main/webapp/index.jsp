<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Download | Home</title>
  <link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body class="brg">
  <div class="form-card">
    <h1>Welcome</h1>

    <p>
      ${empty cookie.firstName.value 
         ? 'Hello, please register below.' 
         : 'Welcome back '}${empty cookie.firstName.value ? '' : cookie.firstName.value}${empty cookie.firstName.value ? '' : '!'}
    </p>

    <p><a class="back-link" href="register.jsp">Register</a></p>
  </div>
</body>
</html>
