package database;

        import java.sql.*;

// This class can be used to initialize the database connection
public class DatabaseConnection {
    public static Connection initializeDatabase()
            throws SQLException, ClassNotFoundException {
        // Initialize all the information regarding
        // Database Connection
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/";
        // Database name to access
        String dbName = "qlmathang";
        String dbUsername = "root";
        String dbPassword = "91020.Nam";

        Class.forName(dbDriver);
        return DriverManager.getConnection(dbURL + dbName + "?autoReconnect=true&useSSL=false",
                dbUsername,
                dbPassword);
    }
}