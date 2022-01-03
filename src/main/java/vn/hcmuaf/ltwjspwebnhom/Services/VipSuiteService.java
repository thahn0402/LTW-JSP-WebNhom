package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;
import vn.hcmuaf.ltwjspwebnhom.dao.VipSuiteDao;

import java.util.List;

public class VipSuiteService {
    private static VipSuiteService instance;

    public static VipSuiteService getInstance() {
        if (instance == null) {
            instance = new VipSuiteService();
        }
        return instance;
    }

    private VipSuiteService() {
    }

    public List<Room> getAll() {
        return VipSuiteDao.getInstance().getAll();
    }
}
