package model;

import java.io.Serializable;

public class User implements Serializable {
    private int ID;
    private String name,nvCode,phone,email,address,username,password;


    public User() {
    }
    public User(int ID, String name, String nvCode, String phone, String email, String address,String username,String password) {
        this.ID = ID;
        this.name = name;
        this.nvCode = nvCode;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.username =username;
        this.password = password;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNvCode() {
        return nvCode;
    }

    public void setNvCode(String nvCode) {
        this.nvCode = nvCode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
