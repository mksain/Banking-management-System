/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;


public class Account {
    private String account_no;
    private String aadhar_id;
    private String account_type;
    private String interest_rate;
    private String balance;
    private String account_status;
    private String name;

    public Account(String aadhar_id,String account_no, String account_type, String interest_rate, String balance, String account_status,String name) {
        this.account_no = account_no;
        this.aadhar_id=aadhar_id;
        this.account_type = account_type;
        this.interest_rate = interest_rate;
        this.balance = balance;
        this.account_status = account_status;
        this.name=name;
    }

    public Account(String balance) {
        this.balance = balance;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
    public Account()
    {
        
    }

    public String getAadhar_id() {
        return aadhar_id;
    }

    public void setAadhar_id(String aadhar_id) {
        this.aadhar_id = aadhar_id;
    }

    public String getAccount_no() {
        return account_no;
    }

    public void setAccount_no(String account_no) {
        this.account_no = account_no;
    }

    public String getAccount_type() {
        return account_type;
    }

    public void setAccount_type(String account_type) {
        this.account_type = account_type;
    }

    public String getInterest_rate() {
        return interest_rate;
    }

    public void setInterest_rate(String interest_rate) {
        this.interest_rate = interest_rate;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getAccount_status() {
        return account_status;
    }

    public void setAccount_status(String account_status) {
        this.account_status = account_status;
    }
    
    
    
}
