package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
    public static Connection con;

    public DAO(){
        if(con == null){
            String dbUrl =
                    "jdbc:mysql://localhost:3306/qlmathang?autoReconnect=true&useSSL=false&clientInteractive=true";
            String dbClass = "com.mysql.cj.jdbc.Driver";
            try {
                Class.forName(dbClass);
                con = DriverManager.getConnection (dbUrl, "root", "05072000");
            }catch(Exception e) {
                e.printStackTrace();
            }
        }
    }
}
