/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entities.Branch;
import java.sql.*;
import javax.swing.JOptionPane;
public class BranchDao {
    private Connection conn;
    
    public BranchDao(Connection conn)
    {
        this.conn=conn;
    }
    
    public boolean saveBranch(Branch branch)
    {
        boolean f=false;
        try
        {
            String query="insert into branch(branch_id,branch_name,branch_city,branch_phone,manager_id) values(?,?,?,?,?)";
            PreparedStatement ps=conn.prepareStatement(query);
            
            ps.setString(1,branch.getBranch_id());
            ps.setString(2,branch.getBranch_name());
            ps.setString(3,branch.getBranch_city());
            ps.setString(4,branch.getBranch_phone());
            ps.setString(5,branch.getManager_id());
            
            ps.executeUpdate();
            f=true;
            
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
            
       return f;
    }
}
