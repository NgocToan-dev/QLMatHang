package model;

import java.io.Serializable;
import java.util.Date;

public class DonNhapHang implements Serializable {

    private int donId, nhaCungCapID, isPayment, isImportToWarehouse, isConfirm;
    private String tenDon, nhaCungCap, totalPrice;
    private Date paymentTime, importTime, createDate, confirmDate;

    public DonNhapHang(int donId, int nhaCungCapID, int isPayment, int isImportToWarehouse, int isConfirm, String tenDon, String nhaCungCap, String totalPrice, Date paymentTime, Date importTime, Date createDate, Date confirmDate) {
        this.donId = donId;
        this.nhaCungCapID = nhaCungCapID;
        this.isPayment = isPayment;
        this.isImportToWarehouse = isImportToWarehouse;
        this.isConfirm = isConfirm;
        this.tenDon = tenDon;
        this.nhaCungCap = nhaCungCap;
        this.totalPrice = totalPrice;
        this.paymentTime = paymentTime;
        this.importTime = importTime;
        this.createDate = createDate;
        this.confirmDate = confirmDate;
    }

    public DonNhapHang() {
    }

    public int getDonId() {
        return donId;
    }

    public void setDonId(int donId) {
        this.donId = donId;
    }

    public int getNhaCungCapID() {
        return nhaCungCapID;
    }

    public void setNhaCungCapID(int nhaCungCapID) {
        this.nhaCungCapID = nhaCungCapID;
    }

    public int getIsPayment() {
        return isPayment;
    }

    public void setIsPayment(int isPayment) {
        this.isPayment = isPayment;
    }

    public int getIsImportToWarehouse() {
        return isImportToWarehouse;
    }

    public void setIsImportToWarehouse(int isImportToWarehouse) {
        this.isImportToWarehouse = isImportToWarehouse;
    }

    public int getIsConfirm() {
        return isConfirm;
    }

    public void setIsConfirm(int isConfirm) {
        this.isConfirm = isConfirm;
    }

    public String getTenDon() {
        return tenDon;
    }

    public void setTenDon(String tenDon) {
        this.tenDon = tenDon;
    }

    public Date getPaymentTime() {
        return paymentTime;
    }

    public void setPaymentTime(Date paymentTime) {
        this.paymentTime = paymentTime;
    }

    public Date getImportTime() {
        return importTime;
    }

    public void setImportTime(Date importTime) {
        this.importTime = importTime;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getConfirmDate() {
        return confirmDate;
    }

    public void setConfirmDate(Date confirmDate) {
        this.confirmDate = confirmDate;
    }

    public String getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(String nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }
}
