package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.dao.ExecutiveRoomDao;

import java.util.List;

public class ExecutiveRoomService {
    private static ExecutiveRoomService instance;

    public static ExecutiveRoomService getInstance() {
        if (instance == null) {
            instance = new ExecutiveRoomService();
        }
        return instance;
    }

    private ExecutiveRoomService() {
    }

    public List<Room> getAll() {
        return ExecutiveRoomDao.getInstance().getAll();
    }
}
