package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class FamilyRoomDao {
    private static  FamilyRoomDao instance;

    private  FamilyRoomDao() {
    }

    public static  FamilyRoomDao getInstance() {
        if (instance == null) {
            instance = new  FamilyRoomDao();
        }
        return instance;
    }

    public List<Room> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from family_room").mapToBean(Room.class).stream().collect(Collectors.toList());
        });
    }
}
