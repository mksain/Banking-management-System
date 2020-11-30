/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;
import com.entities.Department;
import java.sql.*;
import javax.swing.JOptionPane;

public class DepartmentDao {
    
   private Connection conn;
    
   public DepartmentDao(Connection conn)
   {
       this.conn=conn;
   }
   
   public boolean saveDepartment(Department department)
   {
       boolean f=false;
       try
       {
           String query="insert into department(dep_id,dep_name,hod_name,designation) values(?,?,?,?)";
           PreparedStatement ps=conn.prepareStatement(query);
           
           ps.setString(1,department.getDepartment_id());
           ps.setString(2,department.getDepartment_name());
           ps.setString(3,department.getHod_name());
           ps.setString(4,department.getDesignation());
           
           ps.executeUpdate();
           f=true;
           
       }catch(Exception e)
       {
           JOptionPane.showMessageDialog(null,e);
       }
       return f;
   }
}
