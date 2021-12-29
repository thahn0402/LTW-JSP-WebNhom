package vn.hcmuaf.ltwjspwebnhom;

import vn.hcmuaf.ltwjspwebnhom.Services.RoomService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductListController", value = "/ProductList")
public class RoomListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("rooms", RoomService.getInstance().getAll());
        request.getRequestDispatcher("single-room.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
