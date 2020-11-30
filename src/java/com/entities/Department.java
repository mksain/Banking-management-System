/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;


public class Department {
    private String department_id;
    private String department_name;
    private String hod_name;
    private String designation;

    public Department(String department_id, String department_name, String hod_name, String designation) {
        this.department_id = department_id;
        this.department_name = department_name;
        this.hod_name = hod_name;
        this.designation = designation;
    }

    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }

    public String getDepartment_name() {
        return department_name;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }

    public String getHod_name() {
        return hod_name;
    }

    public void setHod_name(String hod_name) {
        this.hod_name = hod_name;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }
    
    
    
}
