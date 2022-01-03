package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class SingleRoomDao {
    private static SingleRoomDao instance;

    private SingleRoomDao() {
    }

    public static SingleRoomDao getInstance() {
        if (instance == null) {
            instance = new SingleRoomDao();
        }
        return instance;
    }

    public List<Room> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from single_room").mapToBean(Room.class).stream().collect(Collectors.toList());
        });
    }
}
