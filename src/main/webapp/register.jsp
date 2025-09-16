<%
    String album = request.getParameter("album");
%>
<!DOCTYPE html>
<html>
<head>
  <title>Download registration</title>
  <link rel="stylesheet" href="styles/main.css">
  <style>
    .form-row {
        margin-bottom: 15px;
        display: flex;
        align-items: center;
    }
    .form-row label {
        width: 120px;   /* căn thẳng cột label */
        font-weight: bold;
    }
    .form-row input {
        width: 300px;   /* cố định chiều rộng input */
        padding: 8px;
        border-radius: 6px;
        border: 1px solid #ccc;
    }
  </style>
</head>
<body>
  <h2>Download registration</h2>
  <p>To register for our downloads, enter your name and email address below. Then click Submit.</p>

  <form action="register" method="post">
    <input type="hidden" name="album" value="<%= album %>">

    <div class="form-row">
      <label>Email:</label>
      <input type="email" name="email" required>
    </div>

    <div class="form-row">
      <label>First Name:</label>
      <input type="text" name="firstName" required>
    </div>

    <div class="form-row">
      <label>Last Name:</label>
      <input type="text" name="lastName">
    </div>

    <input id="submit" type="submit" value="Register">
  </form>
</body>
</html>
