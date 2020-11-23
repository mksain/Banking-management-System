/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.helper;
import java.sql.*;
import javax.swing.JOptionPane;

public class javaconnect {
    
    public static Connection conn;
    
    public static Connection connectdb()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/banking_management","root","manish");
            
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
            return null;
        }
        return conn;
    }
}
