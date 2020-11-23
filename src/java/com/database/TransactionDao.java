/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;
import java.sql.*;

public class TransactionDao {
    Connection conn=null;
    
    public void TransactionDao(Connection conn)
    {
        this.conn=conn;
    }
    
   
}
