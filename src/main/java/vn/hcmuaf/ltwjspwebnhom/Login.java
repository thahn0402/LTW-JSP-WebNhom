package vn.hcmuaf.ltwjspwebnhom;

import vn.hcmuaf.ltwjspwebnhom.Services.UserService;
import vn.hcmuaf.ltwjspwebnhom.beans.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = UserService.getInstance().checkLogin(username, password);
        if(user!=null){
            //set
            HttpSession session = request.getSession();
            session.setAttribute("auth", user);
            response.sendRedirect("/LTW_JSP_WebNhom_war/index.jsp");
        } else {
            request.setAttribute("error", "Username or password is incorrect!");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    }
}
