package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.dao.DoubleRoomDao;

import java.util.List;
public class DoubleRoomService {
    private static DoubleRoomService instance;

    public static DoubleRoomService getInstance() {
        if (instance == null) {
            instance = new DoubleRoomService();
        }
        return instance;
    }

    private DoubleRoomService() {
    }

    public List<Room> getAll() {
        return DoubleRoomDao.getInstance().getAll();
    }
}
