/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entities.Customer;
import java.sql.*;
import javax.swing.JOptionPane;

public class CustomerDao {
    private Connection conn;
    
    public CustomerDao(Connection conn)
    {
        this.conn=conn;
    }
    
    public boolean saveCustomer(Customer customer)
    {
        boolean f=false;
        
        try
        {
            String query="insert into customer(name,aadhar,address,phone,email,branch_id,account_no,country) values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps=this.conn.prepareStatement(query);
            
            ps.setString(1,customer.getName());
            ps.setString(2,customer.getAadhar());
            ps.setString(3,customer.getAddress());
            ps.setString(4,customer.getPhone());
            ps.setString(5,customer.getEmail());
            ps.setString(6,customer.getBranch_id());
            ps.setString(7,customer.getAccount_no());
            ps.setString(8,customer.getCountry());
            
            ps.executeUpdate();
            
            f=true;
            
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return f;
    }
    
    
    public Customer search_customer(String aadhar)
    {
        Customer customer=null;
        try
        {
            String query="select * from customer where aadhar="+aadhar;
            PreparedStatement ps=this.conn.prepareStatement(query);
            
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
                customer=new Customer();
                
                customer.setName(rs.getString("name"));
                 customer.setAadhar(rs.getString("aadhar"));
                  customer.setAddress(rs.getString("address"));
                   customer.setPhone(rs.getString("phone"));
                    customer.setEmail(rs.getString("email"));
                     customer.setBranch_id(rs.getString("branch_id"));
                      customer.setAccount_no(rs.getString("account_no"));
                       customer.setCountry(rs.getString("country"));
            }
            
            
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return customer;
    }
    
}
