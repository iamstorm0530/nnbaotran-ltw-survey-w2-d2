<%@ page import="jakarta.servlet.http.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String artist = request.getParameter("artist");
    String firstName = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("firstName".equals(c.getName())) {
                firstName = c.getValue();
            }
        }
    }
    if (firstName == null) {
        response.sendRedirect("register.jsp?artist=" + artist);
        return;
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
    <h2><%= artist %> - Songs</h2>
    <table>
        <tr><th>Song</th><th>Play</th></tr>
        <% if ("Charlie Puth".equals(artist)) { %>
            <tr>
                <td>Attention</td>
                <td><audio controls><source src="music/charlie_attention.mp3" type="audio/mpeg"></audio></td>
            </tr>
            <tr>
                <td>How Long</td>
                <td><audio controls><source src="music/charlie_howlong.mp3" type="audio/mpeg"></audio></td>
            </tr>
            <tr>
                <td>We Don’t Talk Anymore</td>
                <td><audio controls><source src="music/charlie_wedont.mp3" type="audio/mpeg"></audio></td>
            </tr>
        <% } else if ("Son Tung MTP".equals(artist)) { %>
            <tr>
                <td>Chắc Ai Đó Sẽ Về</td>
                <td><audio controls><source src="music/sontung_cadv.mp3" type="audio/mpeg"></audio></td>
            </tr>
            <tr>
                <td>Chạy Ngay Đi</td>
                <td><audio controls><source src="music/sontung_cnd.mp3" type="audio/mpeg"></audio></td>
            </tr>
            <tr>
                <td>Chúng Ta Không Thuộc Về Nhau</td>
                <td><audio controls><source src="music/sontung_ctkttvn.mp3" type="audio/mpeg"></audio></td>
            </tr>
        <% } else if ("ABBA".equals(artist)) { %>
            <tr>
                <td>Gimme! Gimme! Gimme!</td>
                <td><audio controls><source src="music/abba_gimme.mp3" type="audio/mpeg"></audio></td>
            </tr>
            <tr>
                <td>Happy New Year</td>
                <td><audio controls><source src="music/abba_hny.mp3" type="audio/mpeg"></audio></td>
            </tr>
        <% } %>
    </table>

    <form action="cookies.jsp" method="post">
        <input type="submit" value="View Cookies">
    </form>
    <form action="index.jsp" method="get">
        <input type="submit" value="View Albums">
    </form>
</body>
</html>
