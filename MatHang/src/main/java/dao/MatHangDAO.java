package dao;

import model.MatHang;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MatHangDAO extends DAO{

    private static final String INSERT_MAT_HANG = "";
    private static final String UPDATE_MATH_HANG = "";

    public MatHangDAO () {
        super();
    }

    public List<MatHang> getListMatHang(){
        List<MatHang> arrayList = new ArrayList<>();
        String sql = "call getListMatHang(?)";
        MatHang mh = new MatHang();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, 1);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                mh.setName(rs.getString("name"));
                arrayList.add(mh);
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }
}
