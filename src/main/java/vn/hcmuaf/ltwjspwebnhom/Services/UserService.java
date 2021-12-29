package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.User;
import vn.hcmuaf.ltwjspwebnhom.dao.UserDao;

import java.util.HashMap;
import java.util.Map;

public class UserService {
    private static UserService instance;


    private UserService() {
    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public boolean checkLogin(String username, String password) {
        User user = UserDao.getInstance().checkLogin(username, password);
        return user != null;
    }

    public boolean register(String username, String password, String confirm, String email, String phone) {
        return UserDao.getInstance().insertUser(username, password);

    }
}
