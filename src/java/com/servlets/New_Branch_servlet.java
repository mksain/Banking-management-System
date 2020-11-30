/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.database.BranchDao;
import com.entities.Branch;
import com.entities.Message;
import com.helper.javaconnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author manish
 */
public class New_Branch_servlet extends HttpServlet {

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
            out.println("<title>Servlet New_Branch_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
           
            String branch_id=request.getParameter("branch_id");
            String branch_name=request.getParameter("branch_name");
            String branch_city=request.getParameter("branch_city");
            String branch_phone=request.getParameter("branch_phone");
            String manager_id=request.getParameter("manager_id");
            
            Branch branch=new Branch(branch_id,branch_name,branch_city,branch_phone,manager_id);
            
            BranchDao dao=new BranchDao(javaconnect.connectdb());
            
            if(dao.saveBranch(branch))
            {
                Message msg=new Message("Save Successfully !","success","color: #155724;background-color:#d4edda;border: 1px solid transparent;border-color: #c3e6cb;");
                  
                  HttpSession s=request.getSession();
                  s.setAttribute("msg",msg);
                  
                  response.sendRedirect("branch.jsp");
            }
            else
            {
                Message msg=new Message("Please Enter Correct Detail -Oops-","error","color: #721c24;background-color:#f8d7da;border: 1px solid transparent;border-color: #f5c6cb;");
               
               HttpSession s=request.getSession();
               s.setAttribute("msg",msg);
               
               response.sendRedirect("branch.jsp");
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
