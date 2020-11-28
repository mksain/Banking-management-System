/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;


public class loan {
    private String loan_id;
    private String account_no;
    private String amount;
    private String interest_rate;
    private String duration;
    private String start_date;
    private String due_amount;

    public loan(String loan_id, String account_no, String amount, String interest_rate, String duration, String start_date, String due_amount) {
        this.loan_id = loan_id;
        this.account_no = account_no;
        this.amount = amount;
        this.interest_rate = interest_rate;
        this.duration = duration;
        this.start_date = start_date;
        this.due_amount = due_amount;
    }

    public String getLoan_id() {
        return loan_id;
    }

    public void setLoan_id(String loan_id) {
        this.loan_id = loan_id;
    }

    public String getAccount_no() {
        return account_no;
    }

    public void setAccount_no(String account_no) {
        this.account_no = account_no;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getInterest_rate() {
        return interest_rate;
    }

    public void setInterest_rate(String interest_rate) {
        this.interest_rate = interest_rate;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getDue_amount() {
        return due_amount;
    }

    public void setDue_amount(String due_amount) {
        this.due_amount = due_amount;
    }
    
    
}
