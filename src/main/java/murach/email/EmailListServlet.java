package murach.email;

import java.io.IOException;
import java.time.Year;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    req.setAttribute("currentYear", Year.now().getValue());

    String action = req.getParameter("action");
    if (action == null) action = "join";

    String url = "/index.jsp";

    if ("add".equals(action)) {
      String first = trim(req.getParameter("firstName"));
      String last  = trim(req.getParameter("lastName"));
      String email = trim(req.getParameter("email"));

      if (isBlank(first) || isBlank(last) || isBlank(email)) {
        req.setAttribute("message", "All three values are required.");
        req.setAttribute("firstName", first);
        req.setAttribute("lastName",  last);
        req.setAttribute("email",     email);
        url = "/index.jsp";
      } else {
        req.setAttribute("firstName", first);
        req.setAttribute("lastName",  last);
        req.setAttribute("email",     email);
        url = "/thanks.jsp";
      }
    }

    getServletContext().getRequestDispatcher(url).forward(req, resp);
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
      doPost(req, resp);
  }

  private static boolean isBlank(String s){ return s == null || s.trim().isEmpty(); }
  private static String trim(String s){ return s == null ? null : s.trim(); }
}
