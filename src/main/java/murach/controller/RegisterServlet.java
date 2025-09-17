package murach.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String artist = request.getParameter("artist");

        Cookie c1 = new Cookie("firstName", firstName);
        Cookie c2 = new Cookie("lastName", lastName);
        Cookie c3 = new Cookie("email", email);

        c1.setMaxAge(60*60*24*365);
        c2.setMaxAge(60*60*24*365);
        c3.setMaxAge(60*60*24*365);

        response.addCookie(c1);
        response.addCookie(c2);
        response.addCookie(c3);

        HttpSession session = request.getSession();
        session.setAttribute("firstName", firstName);
        session.setAttribute("lastName", lastName);
        session.setAttribute("email", email);

        response.sendRedirect("album.jsp?artist=" + artist);
    }
}
