package dao;

import model.MatHang;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MatHangDAO extends DAO{

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

    public List<MatHang> search(String key) {
        List<MatHang> list = new ArrayList<>();
        String sql = "call getListMatHangAll(?)";
        if (con == null) return list;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, key == null ? "" : key);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MatHang mh = MatHang.builder().id(rs.getLong(1))
                        .code(rs.getString(2)).name(rs.getString(3)).build();
                list.add(mh);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
