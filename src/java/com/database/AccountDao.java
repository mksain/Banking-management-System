/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entities.Account;
import java.sql.*;
import javax.swing.JOptionPane;
public class AccountDao {
    
    private Connection conn;
    
    public AccountDao(Connection conn)
    {
        this.conn=conn;
    }
    
    
    public boolean saveAccount(Account account)
    {
        boolean f=false;
        try
        {
            String query="insert into account(account_no,ac_type,interest,balance,ac_status,aadhar_no,name) values(?,?,?,?,?,?,?)";
            
            PreparedStatement ps=this.conn.prepareStatement(query);
            
            ps.setString(1,account.getAccount_no());
            ps.setString(2,account.getAccount_type());
            ps.setString(3,account.getInterest_rate());
            ps.setString(4,account.getBalance());
            ps.setString(5,account.getAccount_status());
            ps.setString(6,account.getAadhar_id());
            ps.setString(7,account.getName());
            
            ps.executeUpdate();
            
            f=true;
            
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e.getMessage());
        }
        return f;
    }
    
    
    //searching account detail one by one
    
    public Account searchAccount(String account_no)
    {
        Account account=null;
        
        try
        {
            String query="select * from account where account_no="+account_no;
            PreparedStatement ps=this.conn.prepareStatement(query);
            
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
                account=new Account();
                
                account.setAccount_no(rs.getString("account_no"));
                account.setAadhar_id(rs.getString("aadhar_no"));
                account.setAccount_type(rs.getString("ac_type"));
                account.setInterest_rate(rs.getString("interest"));
                account.setBalance(rs.getString("balance"));
                account.setAccount_status(rs.getString("ac_status"));
                account.setName(rs.getString("name"));
            }
            
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return account;
    }
    
    public boolean update_balance(String account_no ,Account account)
    {
       boolean f=false;
        
        try
        {
            String query="Update account set balance=? where account_no="+account_no;
            PreparedStatement ps=this.conn.prepareStatement(query);  
            
            ps.setString(1,account.getBalance());
            
            ps.executeUpdate();
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
       return f;
    }
}
