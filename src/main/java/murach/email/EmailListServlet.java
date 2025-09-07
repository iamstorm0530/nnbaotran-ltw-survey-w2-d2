package murach.email;

import murach.business.User;
// import murach.data.UserDB; // Nếu muốn gọi no-op: UserDB.insert(user);

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String firstName = request.getParameter("firstName");
        String lastName  = request.getParameter("lastName");
        String email     = request.getParameter("email");

        User user = new User(firstName, lastName, email);

        // Bài 8-1: đặt vào request + ngày hiện tại
        request.setAttribute("user", user);
        request.setAttribute("currentDate", new Date());

        // Lưu danh sách user vào session (collection)
        HttpSession session = request.getSession();
        @SuppressWarnings("unchecked")
        ArrayList<User> users = (ArrayList<User>) session.getAttribute("userList");
        if (users == null) {
            users = new ArrayList<>();
            session.setAttribute("userList", users);
        }
        users.add(user);

        // Nếu muốn theo bài cũ có gọi data layer:
        // UserDB.insert(user);

        getServletContext()
                .getRequestDispatcher("/thanks.jsp")
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
