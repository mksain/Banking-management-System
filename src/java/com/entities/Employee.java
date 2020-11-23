
package com.entities;

import java.sql.*;

public class Employee {
    private int id;
    private String name;
    private String address;
    private String phone;
    private String email;
    private String account_no;
    private String branch_id;
    private String department_id;
    private String password;

    public Employee(int id, String name, String address, String phone, String email, String account_no, String branch_id, String department_id, String password) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.account_no = account_no;
        this.branch_id = branch_id;
        this.department_id = department_id;
        this.password = password;
    }

    
    
    
    public Employee() {
    }

    public Employee(String name, String address, String phone, String email, String account_no, String branch_id, String department_id, String password) {
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.account_no = account_no;
        this.branch_id = branch_id;
        this.department_id = department_id;
        this.password = password;
    }
    
    
    // getters and setter

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getAccount_no() {
        return account_no;
    }

    public void setAccount_no(String account_no) {
        this.account_no = account_no;
    }

    public String getBranch_id() {
        return branch_id;
    }

    public void setBranch_id(String branch_id) {
        this.branch_id = branch_id;
    }

    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}
