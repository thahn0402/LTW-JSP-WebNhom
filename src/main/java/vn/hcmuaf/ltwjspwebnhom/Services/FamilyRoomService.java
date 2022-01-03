package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.dao.FamilyRoomDao;

import java.util.List;

public class FamilyRoomService {
    private static FamilyRoomService instance;

    public static FamilyRoomService getInstance() {
        if (instance == null) {
            instance = new FamilyRoomService();
        }
        return instance;
    }

    private FamilyRoomService() {
    }

    public List<Room> getAll() {
        return FamilyRoomDao.getInstance().getAll();
    }
}
