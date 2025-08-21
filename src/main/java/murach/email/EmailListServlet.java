package murach.email;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import murach.business.User;

public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // Tạo đối tượng User
        User user = new User(email, firstName, lastName);

        // Gửi user đến JSP
        request.setAttribute("user", user);

        // Forward đến thanks.jsp
        String url = "/thanks.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
