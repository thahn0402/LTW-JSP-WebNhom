package vn.hcmuaf.ltwjspwebnhom;

import vn.hcmuaf.ltwjspwebnhom.Services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");
        String fullname = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        if (UserService.getInstance().register(username, password, fullname, email, phone)) {
            response.sendRedirect("/LTW_JSP_WebNhom_war/login.jsp");
        } else {
//            add error message
            request.setAttribute("error", "Register fall, Username Exist.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
