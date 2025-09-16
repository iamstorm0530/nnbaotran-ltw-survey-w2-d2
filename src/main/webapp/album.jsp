<%@ page import="jakarta.servlet.http.Cookie" %>
<%
    String album = request.getParameter("album");
    String firstName = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("firstNameCookie".equals(c.getName())) {
                firstName = c.getValue();
            }
        }
    }

    // Nếu chưa đăng ký thì bắt buộc phải điền form
    if (firstName == null) {
        response.sendRedirect("register.jsp?album=" + album);
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
  <title>Downloads</title>
  <link rel="stylesheet" href="styles/main.css">
</head>
<body>
  <h2>Downloads</h2>

  <% if ("86".equals(album)) { %>
    <h3>86 (the band) - True Life Songs and Pictures</h3>
    <table>
      <tr><th>Song title</th><th>Audio Format</th></tr>
      <tr><td>You Are a Star</td><td><a href="#">MP3</a></td></tr>
      <tr><td>Don't Make No Difference</td><td><a href="#">MP3</a></td></tr>
    </table>

  <% } else if ("paddle1".equals(album)) { %>
    <h3>Paddlefoot - The First CD</h3>
    <table>
      <tr><th>Song title</th><th>Audio Format</th></tr>
      <tr><td>64 Corvair</td><td><a href="#">MP3</a></td></tr>
      <tr><td>Whiskey Before Breakfast</td><td><a href="#">MP3</a></td></tr>
    </table>

  <% } else if ("paddle2".equals(album)) { %>
    <h3>Paddlefoot - The Second CD</h3>
    <table>
      <tr><th>Song title</th><th>Audio Format</th></tr>
      <tr><td>Neon Lights</td><td><a href="#">MP3</a></td></tr>
      <tr><td>Tank Hill</td><td><a href="#">MP3</a></td></tr>
    </table>

  <% } else if ("joe".equals(album)) { %>
    <h3>Joe Rut - Genuine Wood Grained Finish</h3>
    <table>
      <tr><th>Song title</th><th>Audio Format</th></tr>
      <tr><td>Filter</td><td><a href="#">MP3</a></td></tr>
      <tr><td>So Long Lazy Ray</td><td><a href="#">MP3</a></td></tr>
    </table>
  <% } %>

  <a href="index.jsp">View list of albums</a><br>
  <a href="cookies.jsp">View all cookies</a>
</body>
</html>
