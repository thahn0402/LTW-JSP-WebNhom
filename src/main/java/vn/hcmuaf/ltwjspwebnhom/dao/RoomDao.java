package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class RoomDao {
    private static RoomDao instance;

    private RoomDao() {
    }

    public static RoomDao getInstance() {
        if (instance == null) {
            instance = new RoomDao();
        }
        return instance;
    }

    public List<Room> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from room").mapToBean(Room.class).stream().collect(Collectors.toList());
        });
    }
}
