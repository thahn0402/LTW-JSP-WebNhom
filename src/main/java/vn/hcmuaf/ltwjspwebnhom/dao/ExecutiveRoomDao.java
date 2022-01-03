package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ExecutiveRoomDao {
    private static ExecutiveRoomDao instance;

    private ExecutiveRoomDao() {
    }

    public static ExecutiveRoomDao getInstance() {
        if (instance == null) {
            instance = new ExecutiveRoomDao();
        }
        return instance;
    }

    public List<Room> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from executive_room").mapToBean(Room.class).stream().collect(Collectors.toList());
        });
    }
}
