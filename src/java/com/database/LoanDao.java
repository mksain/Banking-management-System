/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;
import com.entities.loan;
import java.sql.*;
import javax.swing.JOptionPane;
public class LoanDao {
    private Connection conn;
    
    public LoanDao(Connection conn)
    {
        this.conn=conn;
    }
    
    public boolean saveloan(loan loandata)
    {
        boolean f=false;
        try
        {
            String query="insert into loan(loan_id,account_no,amount,interest_rate,duration,start_date,due_amount) values(?,?,?,?,?,?,?)";
            PreparedStatement ps=this.conn.prepareStatement(query);
            
            ps.setString(1,loandata.getLoan_id());
            ps.setString(2,loandata.getAccount_no());
            ps.setString(3,loandata.getAmount());
            ps.setString(4,loandata.getInterest_rate());
            ps.setString(5,loandata.getDuration());
            ps.setString(6,loandata.getStart_date());
            ps.setString(7,loandata.getDue_amount());
            
            ps.executeUpdate();
            
            f=true;
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return f;
    }
    
}
