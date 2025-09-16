<%@ page import="jakarta.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
  <title>Cookies</title>
  <link rel="stylesheet" href="styles/main.css">
</head>
<body>
  <h2>Cookies</h2>
  <p>Here's a table with all of the cookies this browser is sending to the current server.</p>

  <table>
    <tr><th>Name</th><th>Value</th></tr>
    <%
      Cookie[] cookies = request.getCookies();
      if (cookies != null) {
        for (Cookie c : cookies) {
          String name = c.getName();
          // Chỉ hiển thị JSESSIONID + cookies mà app tạo
          if ("JSESSIONID".equals(name) ||
              "emailCookie".equals(name) ||
              "firstNameCookie".equals(name) ||
              "lastNameCookie".equals(name)) {
    %>
          <tr><td><%= c.getName() %></td><td><%= c.getValue() %></td></tr>
    <%    }
        }
      }
    %>
  </table>

  <a href="index.jsp">View list of albums</a><br>
  <a href="deleteCookies">Delete all persistent cookies</a>
</body>
</html>
