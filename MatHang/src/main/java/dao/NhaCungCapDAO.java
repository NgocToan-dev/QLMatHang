package dao;

import model.NhaCungCap;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NhaCungCapDAO extends DAO {
    public List<NhaCungCap> search(String key) {
        List<NhaCungCap> list = new ArrayList<>();
        String sql = "call getListNhaCungCap(?)";
        if (con == null) return list;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, key == null ? "" : key);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                NhaCungCap ncc = NhaCungCap.builder().id(rs.getLong(1))
                        .name(rs.getString(2)).code(rs.getString(3)).email(rs.getString(4))
                        .phone(rs.getString(5)).address(rs.getString(6)).build();
                list.add(ncc);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
