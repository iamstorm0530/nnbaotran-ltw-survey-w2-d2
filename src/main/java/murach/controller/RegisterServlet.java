package murach.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String album = request.getParameter("album");

        // Chỉ tạo cookies chuẩn, không nhét param trực tiếp
        if (email != null && firstName != null) {
            Cookie emailCookie = new Cookie("emailCookie", email);
            Cookie firstNameCookie = new Cookie("firstNameCookie", firstName);
            Cookie lastNameCookie = new Cookie("lastNameCookie", lastName);

            int expiry = 60 * 60 * 24 * 7; // 7 ngày
            emailCookie.setMaxAge(expiry);
            firstNameCookie.setMaxAge(expiry);
            lastNameCookie.setMaxAge(expiry);

            response.addCookie(emailCookie);
            response.addCookie(firstNameCookie);
            response.addCookie(lastNameCookie);
        }

        response.sendRedirect("album.jsp?album=" + album);
    }
}
