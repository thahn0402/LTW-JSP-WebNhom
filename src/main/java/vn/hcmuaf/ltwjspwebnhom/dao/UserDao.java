package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.User;
import vn.hcmuaf.ltwjspwebnhom.db.DBConnect;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private static UserDao userDao;

    private UserDao() {
    }

    public static UserDao getInstance() {
        if (userDao == null) {
            userDao = new UserDao();
        }
        return userDao;
    }

    public User checkLogin(String userName, String password) {
        try {
            ResultSet resultSet = DBConnect.connect().executeQuery("SELECT  * FROM user where username = '" + userName + "' AND password = '" + password + "'");
            User user = null;
            if (resultSet.next()) {
                user = new User();
                user.setUsername(resultSet.getString("username"));
            }
            if (user != null && user.getUsername().equals(userName) && !resultSet.next()) {
                return user;
            }
            return null;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean insertUser(String username, String password) {
        try {
            int i = DBConnect.connect().executeUpdate("INSERT INTO user(username, password) VALUE ('" + username + "','" + password + "')");
            return i == 1;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
