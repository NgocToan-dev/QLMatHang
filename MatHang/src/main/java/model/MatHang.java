package model;

import java.sql.Date;

public class MatHang {
    private int matHangId;
    private String matHangCode;
    private String name;
    private byte[] image;
    private double retailPrice;
    private double importPrice;
    private double wholesalePrice;
    private String description;
    private Category category;
    private Date createdDate;
    private String attribute;

    public MatHang() {
    }

    public MatHang(String matHangCode, String name, byte[] image, double retailPrice, double importPrice, double wholesalePrice, String description, Category category, Date createdDate, String attribute) {
        this.matHangCode = matHangCode;
        this.name = name;
        this.image = image;
        this.retailPrice = retailPrice;
        this.importPrice = importPrice;
        this.wholesalePrice = wholesalePrice;
        this.description = description;
        this.category = category;
        this.createdDate = createdDate;
        this.attribute = attribute;
    }

    public int getMatHangId() {
        return matHangId;
    }

    public void setMatHangId(int matHangId) {
        this.matHangId = matHangId;
    }

    public String getMatHangCode() {
        return matHangCode;
    }

    public void setMatHangCode(String matHangCode) {
        this.matHangCode = matHangCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public double getRetailPrice() {
        return retailPrice;
    }

    public void setRetailPrice(double retailPrice) {
        this.retailPrice = retailPrice;
    }

    public double getImportPrice() {
        return importPrice;
    }

    public void setImportPrice(double importPrice) {
        this.importPrice = importPrice;
    }

    public double getWholesalePrice() {
        return wholesalePrice;
    }

    public void setWholesalePrice(double wholesalePrice) {
        this.wholesalePrice = wholesalePrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute;
    }
}
