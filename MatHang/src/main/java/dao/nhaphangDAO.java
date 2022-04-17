package dao;

import database.DatabaseConnection;
import model.DonNhapHang;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

public class nhaphangDAO extends DatabaseConnection {

    public nhaphangDAO() {
    }

    public ArrayList<DonNhapHang> getListDonNhapHang(String action, String keyword) {

        ArrayList<DonNhapHang> lisDonNhapHang = new ArrayList<>();
        CallableStatement cs = null;
        String sql;

        try {
            Connection con = DatabaseConnection.initializeDatabase();
            switch (action) {
                case "filter":
                    sql = "{call filterDonNhapHang()}";
                    cs = con.prepareCall(sql);
                    break;
                case "search":
                    sql = "{call searchDonNhapHang(?)}";
                    cs = con.prepareCall(sql);
                    cs.setString(1, keyword);
                    break;
                case "search-filter":
                    sql = "{call searchDonNhapHangFilter(?)}";
                    cs = con.prepareCall(sql);
                    cs.setString(1, keyword);
                    break;
                case "default":
                    sql = "{call getListDonNhapHang()}";
                    cs = con.prepareCall(sql);
                    break;
            }

            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                DonNhapHang donNhapHang = new DonNhapHang();
                donNhapHang.setDonId(rs.getInt("donId"));
                donNhapHang.setTenDon(rs.getString("tenDon"));
                donNhapHang.setNhaCungCapID(rs.getInt("nhaCungCapID"));
                donNhapHang.setIsPayment(rs.getInt("isPayment"));
                donNhapHang.setPaymentTime(rs.getTimestamp("paymentTime"));
                donNhapHang.setIsImportToWarehouse(rs.getInt("isImportToWarehouse"));
                donNhapHang.setImportTime(rs.getTimestamp("importTime"));
                donNhapHang.setCreateDate(rs.getDate("createdDate"));
                donNhapHang.setConfirmDate(rs.getDate("confirmDate"));
                donNhapHang.setIsConfirm(rs.getInt("isConfirm"));
                donNhapHang.setNhaCungCap(rs.getString("nhaCungCap"));
                donNhapHang.setTotalPrice(rs.getString("totalPrice"));
                lisDonNhapHang.add(donNhapHang);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lisDonNhapHang;
    }
}
