package vn.hcmuaf.ltwjspwebnhom.controller;

import vn.hcmuaf.ltwjspwebnhom.Services.ExecutiveRoomService;
import vn.hcmuaf.ltwjspwebnhom.beans.Room;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ExecutiveRoomList", value = "/ExecutiveRoomList")
public class ExecutiveRoomList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Room> rooms = ExecutiveRoomService.getInstance().getAll();
        request.setAttribute("rooms", rooms);
        request.getRequestDispatcher("executive-room.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
