/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;


public class Branch {
    private String branch_id;
    private String branch_name;
    private String branch_city;
    private String branch_phone;
    private String manager_id;

    public Branch() {
    }

    public Branch(String branch_id, String branch_name, String branch_city, String branch_phone, String manager_id) {
        this.branch_id = branch_id;
        this.branch_name = branch_name;
        this.branch_city = branch_city;
        this.branch_phone = branch_phone;
        this.manager_id = manager_id;
    }

    public String getBranch_id() {
        return branch_id;
    }

    public void setBranch_id(String branch_id) {
        this.branch_id = branch_id;
    }

    public String getBranch_name() {
        return branch_name;
    }

    public void setBranch_name(String branch_name) {
        this.branch_name = branch_name;
    }

    public String getBranch_city() {
        return branch_city;
    }

    public void setBranch_city(String branch_city) {
        this.branch_city = branch_city;
    }

    public String getBranch_phone() {
        return branch_phone;
    }

    public void setBranch_phone(String branch_phone) {
        this.branch_phone = branch_phone;
    }

    public String getManager_id() {
        return manager_id;
    }

    public void setManager_id(String manager_id) {
        this.manager_id = manager_id;
    }
    
    
}
