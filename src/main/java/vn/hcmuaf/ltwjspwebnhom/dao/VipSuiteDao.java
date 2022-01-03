package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class VipSuiteDao {
    private static VipSuiteDao instance;

    private VipSuiteDao() {
    }

    public static VipSuiteDao getInstance() {
        if (instance == null) {
            instance = new VipSuiteDao();
        }
        return instance;
    }

    public List<Room> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from vip_suite").mapToBean(Room.class).stream().collect(Collectors.toList());
        });
    }
}
