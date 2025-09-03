package murach.email;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import murach.business.User;
import murach.data.UserDB;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }

        String url = "/index.html";
        if ("add".equals(action)) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dateOfBirth = request.getParameter("dateOfBirth");
            String ref = request.getParameter("ref");
            String otherRef = request.getParameter("otherRef");
            String wantOffers = request.getParameter("wantOffers");
            String wantEmail = request.getParameter("wantEmail");
            String contact = request.getParameter("contact");

            User user = new User(firstName, lastName, email, dateOfBirth, ref, otherRef, wantOffers, wantEmail, contact);
            UserDB.insert(user);

            request.setAttribute("user", user);
            url = "/thanks.jsp";
        }


        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
