package vn.hcmuaf.ltwjspwebnhom.controller;

import vn.hcmuaf.ltwjspwebnhom.Services.FamilyRoomService;
import vn.hcmuaf.ltwjspwebnhom.beans.Room;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FamilyRoomList", value = "/FamilyRoomList")
public class FamilyRoomList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Room> rooms = FamilyRoomService.getInstance().getAll();
        request.setAttribute("rooms", rooms);
        request.getRequestDispatcher("family-room.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
