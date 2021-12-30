package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.User;
import vn.hcmuaf.ltwjspwebnhom.dao.UserDao;


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

    public boolean register(String username, String password, String fullname, String email, String phone) {
        final boolean b = UserDao.getInstance().insertUser(username, password, fullname, email, phone);
        return b;
    }


}
