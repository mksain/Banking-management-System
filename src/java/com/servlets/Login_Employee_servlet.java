/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.database.EmployeeDao;
import com.entities.Employee;
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
public class Login_Employee_servlet extends HttpServlet {

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
            out.println("<title>Servlet Login_Employee_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
           
            //fetch employee id and passord
             out.println("<h1>hey there is error</h1>");
             int employee_id=0;
             try
             {
                  employee_id=Integer.parseInt(request.getParameter("employee_id"));
             }catch(Exception e)
             {
                  
             }
           
            String password=request.getParameter("password");
            
            EmployeeDao dao=new EmployeeDao(javaconnect.connectdb());
            
           Employee u= dao.getEmployeeIdAndPassword(employee_id, password);
           
          
            
            if(u==null)
            {
                Message msg=new Message("Invalid Details ! try with another","error","alert-danger");
                
                HttpSession s=request.getSession();
                s.setAttribute("msg",msg);
                
                response.sendRedirect("home.jsp");
            }
            else
            {
                HttpSession s=request.getSession();
                s.setAttribute("currentEmployee",u);
                response.sendRedirect("new_customer.jsp");
            }
              out.println("<h1>hey there is error</h1>");
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
