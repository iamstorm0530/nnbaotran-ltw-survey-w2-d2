package murach.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionPool {

    private static ConnectionPool pool = null;

    // 🔹 Thông tin kết nối PostgreSQL (đổi theo cấu hình Render của bạn)
    private static final String URL = "jdbc:dpg-d3h6g4h5pdvs73f0tmgg-a.oregon-postgres.render.com:5432/ch12_1";
    private static final String USER = "ch12_1_user";   // username Render cấp
    private static final String PASSWORD = "e8uY8Zdiox6qDWCcJLFzJCcDzOaauq19"; // thay bằng password trong Render dashboard


    // Constructor riêng tư (singleton)
    private ConnectionPool() {
        try {
            // Nạp driver PostgreSQL (chỉ cần 1 lần)
            Class.forName("org.postgresql.Driver");
            System.out.println("PostgreSQL JDBC Driver loaded successfully.");
        } catch (ClassNotFoundException e) {
            System.err.println("Error loading PostgreSQL Driver: " + e.getMessage());
        }
    }

    // Lấy instance duy nhất của ConnectionPool
    public static synchronized ConnectionPool getInstance() {
        if (pool == null) {
            pool = new ConnectionPool();
        }
        return pool;
    }

    // Lấy connection
    public Connection getConnection() {
        try {
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connected to PostgreSQL successfully.");
            return connection;
        } catch (SQLException e) {
            System.err.println("Error connecting to PostgreSQL: " + e.getMessage());
            return null;
        }
    }

    // Giải phóng connection
    public void freeConnection(Connection c) {
        try {
            if (c != null) {
                c.close();
                System.out.println("Connection closed.");
            }
        } catch (SQLException e) {
            System.err.println("Error closing connection: " + e.getMessage());
        }
    }
}
