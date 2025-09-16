<%@ page import="jakarta.servlet.http.Cookie" %>
<%
    String firstName = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("firstNameCookie".equals(c.getName())) {
                firstName = c.getValue();
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
  <title>Albums</title>
  <link rel="stylesheet" href="styles/main.css">
</head>
<body>
  <h2>List of albums</h2>

  <% if (firstName != null) { %>
      <p>Welcome back, <%= firstName %></p>
  <% } %>

  <ul>
    <li><a href="album.jsp?album=86">86 (the band) - True Life Songs and Pictures</a></li>
    <li><a href="album.jsp?album=paddle1">Paddlefoot - The First CD</a></li>
    <li><a href="album.jsp?album=paddle2">Paddlefoot - The Second CD</a></li>
    <li><a href="album.jsp?album=joe">Joe Rut - Genuine Wood Grained Finish</a></li>
  </ul>

  <% if (firstName == null) { %>
      <!-- Chưa đăng ký thì không có gì thêm -->
  <% } else { %>
      <!-- Đã đăng ký thì mới cho xem cookies -->
      <a href="cookies.jsp">View all cookies</a>
  <% } %>
</body>
</html>
