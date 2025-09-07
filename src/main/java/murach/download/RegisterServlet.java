package murach.download;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");

        // Lưu cookie (encode)
        Cookie firstCookie = new Cookie("firstName",
                URLEncoder.encode(firstName, StandardCharsets.UTF_8));
        Cookie lastCookie = new Cookie("lastName",
                URLEncoder.encode(lastName, StandardCharsets.UTF_8));
        Cookie emailCookie = new Cookie("email",
                URLEncoder.encode(email, StandardCharsets.UTF_8));

        firstCookie.setMaxAge(60*60*24*365);
        lastCookie.setMaxAge(60*60*24*365);
        emailCookie.setMaxAge(60*60*24*365);

        resp.addCookie(firstCookie);
        resp.addCookie(lastCookie);
        resp.addCookie(emailCookie);

        // Giải mã trước khi chuyển sang JSP
        String decodedFirst = URLDecoder.decode(firstCookie.getValue(), StandardCharsets.UTF_8);
        String decodedLast = URLDecoder.decode(lastCookie.getValue(), StandardCharsets.UTF_8);
        String decodedEmail = URLDecoder.decode(emailCookie.getValue(), StandardCharsets.UTF_8);

        req.setAttribute("firstName", decodedFirst);
        req.setAttribute("lastName", decodedLast);
        req.setAttribute("email", decodedEmail);

        // Forward tới JSP
        req.getRequestDispatcher("/view_cookies.jsp").forward(req, resp);
    }
}
