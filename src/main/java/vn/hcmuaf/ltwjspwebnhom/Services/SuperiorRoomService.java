package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.dao.SuperiorRoomDao;

import java.util.List;

public class SuperiorRoomService {
    private static SuperiorRoomService instance;

    public static SuperiorRoomService getInstance() {
        if (instance == null) {
            instance = new SuperiorRoomService();
        }
        return instance;
    }

    private SuperiorRoomService() {
    }

    public List<Room> getAll() {
        return SuperiorRoomDao.getInstance().getAll();
    }
}
