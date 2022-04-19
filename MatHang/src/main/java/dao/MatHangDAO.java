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
        String sql = "call getListNhaCungCap(?)";
        if (con == null) return list;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, key == null ? "" : key);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MatHang mh = MatHang.builder().id(rs.getLong(1))
                        .name(rs.getString(2)).code(rs.getString(3)).build();
                list.add(mh);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<MatHang> getall(){
        List<MatHang> list = new ArrayList<>();
        String sql="SELECT * from mathang ";
        try{
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                MatHang m = new MatHang();
                m.setId(rs.getLong("matHangID"));
                m.setName(rs.getString("name"));
                m.setCode(rs.getString("matHangCode"));
                m.setRetailPrice(rs.getDouble("retailPrice"));
                m.setWholesalePrice(rs.getDouble("wholesalePrice"));
                m.setCreatedDate(rs.getDate("createdDate"));
                list.add(m);
            }
        }catch (SQLException e){
            System.out.println(e);
        }
        return list;
    }

    public void deleteMH(int id){

        try{
            String sql = "delete from mathang where matHangID=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1,id);
            st.executeUpdate();
        }catch (Exception e){
e.printStackTrace();
        }
    }


}
