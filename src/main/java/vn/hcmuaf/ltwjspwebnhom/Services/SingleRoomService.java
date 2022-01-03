package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.dao.SingleRoomDao;

import java.util.List;

public class SingleRoomService {
    private static SingleRoomService instance;

    public static SingleRoomService getInstance() {
        if (instance == null) {
            instance = new SingleRoomService();
        }
        return instance;
    }

    private SingleRoomService() {
    }

    public List<Room> getAll() {
        return SingleRoomDao.getInstance().getAll();
    }
}
