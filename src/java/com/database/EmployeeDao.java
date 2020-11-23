/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.entities.Employee;
import java.sql.*;
import javax.swing.JOptionPane;

public class EmployeeDao {
    
    private Connection conn;
    
    public EmployeeDao(Connection conn)
    {
        this.conn=conn;
    }
    
    public boolean saveEmployee(Employee employee)
    {
        boolean f=false;
        try
        {
            //Employee Database
            
            String query="insert into employee(id,name,address,phone,email,account_no,branch_id,department_id,password) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps=this.conn.prepareStatement(query);
            
            ps.setInt(1, employee.getId());
            ps.setString(2,employee.getName());
            ps.setString(3,employee.getAddress());
            ps.setString(4,employee.getPhone());
            ps.setString(5,employee.getEmail());
            ps.setString(6,employee.getAccount_no());
            ps.setString(7,employee.getBranch_id());
            ps.setString(8,employee.getDepartment_id());
            ps.setString(9,employee.getPassword());
            
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"successfull");
            f=true;
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return f;
    }
    
    
    //get employee by employee id and password
    
    public Employee getEmployeeIdAndPassword(int id,String password)
    {
        Employee employee=null;
        
        try
        {
            
            String query="select * from employee where id=? and password=?";
            PreparedStatement ps=conn.prepareStatement(query);
            
            ps.setInt(1,id);
            ps.setString(2,password);
            
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
                employee =new Employee();
                
                id=rs.getInt("id");
                
                //set detail into object
                employee.setId(id);
                employee.setName(rs.getString("name"));
                employee.setAddress(rs.getString("address"));
                employee.setPhone(rs.getString("phone"));
                employee.setEmail(rs.getString("email"));
                employee.setAccount_no(rs.getString("account_no"));
                employee.setBranch_id(rs.getString("branch_id"));
                employee.setDepartment_id(rs.getString("department_id"));
                employee.setPassword(rs.getString("password"));
            }
            
        }catch(Exception e)
        {
            System.out.println(e);
        }
        
         return employee;
    }
   
}
