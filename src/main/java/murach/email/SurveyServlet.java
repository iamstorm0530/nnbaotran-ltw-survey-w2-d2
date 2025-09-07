package murach.email;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import murach.business.User;

public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = trim(request.getParameter("firstName"));
        String lastName  = trim(request.getParameter("lastName"));
        String email     = trim(request.getParameter("email"));

        String heardFrom = trim(request.getParameter("ref"));
        if ("Other".equalsIgnoreCase(heardFrom)) {
            String otherText = trim(request.getParameter("otherText"));
            if (otherText != null && !otherText.isEmpty()) {
                heardFrom = "Other: " + otherText;
            }
        }

        boolean wantUpdate = "yes".equalsIgnoreCase(request.getParameter("wantUpdate"));
        String contactVia  = trim(request.getParameter("contact"));

        User user = new User(firstName, lastName, email, heardFrom, wantUpdate, contactVia);

        request.setAttribute("user", user);

        getServletContext()
            .getRequestDispatcher("/survey.jsp")
            .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }

    private static String trim(String s) { return s == null ? null : s.trim(); }
}
