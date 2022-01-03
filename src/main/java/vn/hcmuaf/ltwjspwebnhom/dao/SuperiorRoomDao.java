package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class SuperiorRoomDao {
    private static SuperiorRoomDao instance;

    private SuperiorRoomDao() {
    }

    public static SuperiorRoomDao getInstance() {
        if (instance == null) {
            instance = new SuperiorRoomDao();
        }
        return instance;
    }

    public List<Room> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from superior_room").mapToBean(Room.class).stream().collect(Collectors.toList());
        });
    }
}
