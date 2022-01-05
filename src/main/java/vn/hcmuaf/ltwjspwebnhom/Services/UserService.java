package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.User;
import vn.hcmuaf.ltwjspwebnhom.dao.UserDao;

import java.util.List;


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

    public User checkLogin(String username, String password) {
        return UserDao.getInstance().checkLogin(username, password);
    }

    public boolean register(String username, String password, String fullName, String email, String phone) {
        final boolean b = UserDao.getInstance().register(username, password, fullName, email, phone);
        return b;
    }

    public List<User> getInfor(User user){ return UserDao.getInstance().getInfor(user);}

}
