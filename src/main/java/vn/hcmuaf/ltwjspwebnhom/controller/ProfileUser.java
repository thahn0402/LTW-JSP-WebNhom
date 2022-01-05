package vn.hcmuaf.ltwjspwebnhom.controller;

import vn.hcmuaf.ltwjspwebnhom.Services.DoubleRoomService;
import vn.hcmuaf.ltwjspwebnhom.Services.UserService;
import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.beans.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProfileUser", value = "/ProfileUser")
public class ProfileUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = UserService.getInstance().checkLogin(username, password);
        List<User> user1= UserService.getInstance().getInfor(user);
        request.setAttribute("user1", user1);
        request.getRequestDispatcher("profileUser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
