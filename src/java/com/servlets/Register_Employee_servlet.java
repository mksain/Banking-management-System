/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.database.EmployeeDao;
import com.entities.Employee;
import com.helper.javaconnect;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author manish
 */
public class Register_Employee_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register_Employee_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
           //fetch all data
            
            int id=Integer.parseInt(request.getParameter("employee_id"));
            String name=request.getParameter("employee_name");
            String address=request.getParameter("employee_address");
            String phone=request.getParameter("employee_phone");
            String email=request.getParameter("employee_email");
            String account_no=request.getParameter("employee_account_no");
            String branch_id=request.getParameter("employee_branch_id");
            String department_id=request.getParameter("employee_department_id");
            String password=request.getParameter("employee_password");
            //create Employee object and set all data to that object
            
            
            
            Employee employee=new Employee(id,name,address,phone,email,account_no,branch_id,department_id,password);
            
            
            //create employee Dao object
            
            EmployeeDao dao=new EmployeeDao(javaconnect.connectdb());
            if(dao.saveEmployee(employee))
            {
                out.println("done");
            }
            else
            {
                out.println("error");
            }
            
            
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
