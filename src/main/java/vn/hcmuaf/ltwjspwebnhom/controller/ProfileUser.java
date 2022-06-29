package vn.hcmuaf.ltwjspwebnhom.controller;

import vn.hcmuaf.ltwjspwebnhom.Services.DoubleRoomService;
import vn.hcmuaf.ltwjspwebnhom.Services.UserService;
import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.beans.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProfileUser", value = "/ProfileUser")
public class ProfileUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        String username = request.getParameter("username");
        User user = UserService.getInstance().getInfor(username);
        List<User> user2 = new ArrayList<>();
        user2.add(user);
        request.setAttribute("user2", user2);
        request.getRequestDispatcher("profileUser.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
