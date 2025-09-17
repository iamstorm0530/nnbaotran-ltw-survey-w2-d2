<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="jakarta.servlet.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String firstName = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("firstName".equals(c.getName())) {
                firstName = c.getValue();
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h2>Album List</h2>
    <ul>
        <li><a href="album.jsp?artist=Charlie Puth">Charlie Puth</a></li>
        <li><a href="album.jsp?artist=Son Tung MTP">Sơn Tùng MTP</a></li>
        <li><a href="album.jsp?artist=ABBA">ABBA</a></li>
    </ul>

    <% if (firstName != null) { %>
        <p>Welcome back, <%= firstName %>!</p>
    <% } %>
</body>
</html>
