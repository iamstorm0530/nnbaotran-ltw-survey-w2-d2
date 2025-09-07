package murach.download;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        String firstName = nvl(req.getParameter("firstName"));
        String email     = nvl(req.getParameter("email"));

        // set cookie an toàn, path về context
        Cookie fn = new Cookie("firstName", URLEncoder.encode(firstName, StandardCharsets.UTF_8));
        fn.setPath(req.getContextPath().isEmpty() ? "/" : req.getContextPath());
        fn.setMaxAge(60*60*24*30); // 30 ngày
        resp.addCookie(fn);

        Cookie em = new Cookie("email", URLEncoder.encode(email, StandardCharsets.UTF_8));
        em.setPath(req.getContextPath().isEmpty() ? "/" : req.getContextPath());
        em.setMaxAge(60*60*24*30);
        resp.addCookie(em);

        // Chuyển đến trang xem cookie
        resp.sendRedirect(req.getContextPath() + "/view_cookies.jsp");
    }

    private static String nvl(String s) { return s == null ? "" : s.trim(); }
}
