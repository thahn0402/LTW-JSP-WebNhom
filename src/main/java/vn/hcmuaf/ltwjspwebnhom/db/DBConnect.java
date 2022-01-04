package vn.hcmuaf.ltwjspwebnhom.db;

import java.sql.*;

public class DBConnect {
    private static DBConnect dbConnect;
    private Connection connection;
    private static final String DB_URL = "jdbc:mysql://localhost:3307/webnhom?useUnicode=true&characterEncoding=utf-8";
    private static final String USER = "root";
    private static final String PASS = "";

    private DBConnect() {
    }

    public static DBConnect getInstance() {
        if (dbConnect == null) {
            dbConnect = new DBConnect();
        }
        return dbConnect;
    }

    private void connect() throws SQLException ,ClassNotFoundException{
        if (connection == null || connection.isClosed())
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, USER, PASS);
    }

    private boolean isConnect() throws SQLException {
        return connection != null && !connection.isClosed();
    }

    public Statement get() {
        try {
            if (!isConnect()) connect();
            return connection.createStatement();
        } catch (SQLException|ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
