<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String firstName = (session != null) ? (String) session.getAttribute("firstName") : null;
    String lastName  = (session != null) ? (String) session.getAttribute("lastName") : null;
    String email     = (session != null) ? (String) session.getAttribute("email") : null;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cookies Info</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h2>Cookies & Session Info</h2>
    <p>First Name: <%= firstName %></p>
    <p>Last Name: <%= lastName %></p>
    <p>Email: <%= email %></p>
    <p>Session ID: <%= (session != null ? session.getId() : "N/A") %></p>

    <form action="deleteCookies" method="post">
        <input type="submit" value="Delete Cookies">
    </form>
    <form action="index.jsp" method="get">
        <input type="submit" value="View Albums">
    </form>
</body>
</html>
