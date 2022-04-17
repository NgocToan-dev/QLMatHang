package dao;

import java.sql.*;

public class MatHangDAO {

    private static final String INSERT_MAT_HANG = "";
    private static final String UPDATE_MATH_HANG = "";

    Statement statement;
    PreparedStatement preStatement;
    Connection conn;
    ResultSet rs;
    public MatHangDAO (Connection conn) {
        this.conn = conn;
        try {
            this.statement = this.conn.createStatement();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
