/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;
import com.entities.Transaction;
import java.sql.*;
import javax.swing.JOptionPane;

public class TransactionDao {
   private Connection conn;
    
    public TransactionDao(Connection conn)
    {
        this.conn=conn;
    }
    
   public boolean saveTransaction(Transaction transaction)
   {
       boolean f=false;
       
       try
       {
           String query="insert into customer_transaction(account_no,balance,amount,trans_type,emp_id,loan_id,name) values(?,?,?,?,?,?,?)";
           PreparedStatement ps=this.conn.prepareStatement(query);
           
           ps.setString(1,transaction.getAccount_no());
           ps.setString(2,transaction.getBalance());
           ps.setString(3,transaction.getAmount());
           ps.setString(4,transaction.getTrans_type());
           ps.setString(5,transaction.getEmp_id());
           ps.setString(6,transaction.getLoan_id());
           ps.setString(7,transaction.getName());
           
           ps.executeUpdate();
           
           f=true;
           
           
       }catch(Exception e)
       {
           JOptionPane.showMessageDialog(null,e);
       }
       return f;
   }
}
