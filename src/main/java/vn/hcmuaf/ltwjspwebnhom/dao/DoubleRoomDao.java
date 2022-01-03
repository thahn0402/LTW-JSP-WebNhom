package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;
public class DoubleRoomDao {
    private static DoubleRoomDao instance;

    private DoubleRoomDao() {
    }

    public static DoubleRoomDao getInstance() {
        if (instance == null) {
            instance = new DoubleRoomDao();
        }
        return instance;
    }

    public List<Room> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from double_room").mapToBean(Room.class).stream().collect(Collectors.toList());
        });
    }
}
