package vn.hcmuaf.ltwjspwebnhom.dao;

import vn.hcmuaf.ltwjspwebnhom.beans.User;
import vn.hcmuaf.ltwjspwebnhom.db.DBConnect;
import vn.hcmuaf.ltwjspwebnhom.db.JDBIConnector;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.stream.Collectors;

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
        Statement statement = DBConnect.getInstance().get();
        if (statement == null) return null;
        String sql = "SELECT  * FROM user where username = '" + userName
                + "' AND password = '" + password + "'";
        List<User> users = JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT  * FROM user where username =  ?")
                .bind(0, userName)
                .mapToBean(User.class).stream().collect(Collectors.toList()));
        if (users.size() == 1) {
            User user = users.get(0);
            if (user.getPassword().equalsIgnoreCase(password)) {
                user.setPassword(null);
                return user;
            }
        }
        return null;
    }

    public boolean register(String username, String password, String fullname, String email, String phone) {

        Statement statement = DBConnect.getInstance().get();
        if (statement == null) return false;
        int i = JDBIConnector.get().withHandle(
                h -> h.createUpdate("INSERT INTO user(username, password, fullname, email, phone) VALUE(?,?,?,?,?)")
                        .bind(0, username)
                        .bind(1, hashPassword(password))
                        .bind(2, fullname)
                        .bind(3, email)
                        .bind(4, phone)
                        .execute());
        return i == 1;
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(password.getBytes());
            byte byteData[] = md.digest();
            BigInteger number = new BigInteger(1, byteData);
            return number.toString(16);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
