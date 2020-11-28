/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.database.AccountDao;
import com.database.TransactionDao;
import com.entities.Account;
import com.entities.Message;
import com.entities.Transaction;
import com.helper.javaconnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author manish
 */
public class Transaction_servlet extends HttpServlet {

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
            out.println("<title>Servlet Transaction_servlet</title>");
            out.println("</head>");
            out.println("<body>");

            String account_no = request.getParameter("account_no");
            String balance = request.getParameter("balance");
            String amount = request.getParameter("amount");
            String trans_type = request.getParameter("trans_type");
            String emp_id = request.getParameter("emp_id");
            String loan_id = request.getParameter("loan_id");
            String ac_type = request.getParameter("ac_type");
            String name=request.getParameter("name");

            if (ac_type.equals("Active")) {
                if (trans_type.equals("Credit")) {
                    balance = String.valueOf(Integer.parseInt(amount) + Integer.parseInt(balance));
                } else if (trans_type.equals("Debit")) {
                    balance = String.valueOf(Integer.parseInt(balance) - Integer.parseInt(amount));
                }

                Transaction transaction = new Transaction(account_no, balance, amount, trans_type, emp_id, loan_id,name);
                TransactionDao dao = new TransactionDao(javaconnect.connectdb());

                if (dao.saveTransaction(transaction)) {
                    //Account Update
                    Account ac = new Account(balance);
                    AccountDao dao2 = new AccountDao(javaconnect.connectdb());
                    dao2.update_balance(account_no, ac);

                    Message msg = new Message("Transaction Successfull !", "success", "color: #155724;background-color:#d4edda;border: 1px solid transparent;border-color: #c3e6cb;");
                    HttpSession s = request.getSession();
                    s.setAttribute("trans_msg", msg);

                    response.sendRedirect("new_transaction.jsp");
                } else {
                    Message msg = new Message("Please Enter Correct Detail -Oops-", "error", "color: #721c24;background-color:#f8d7da;border: 1px solid transparent;border-color: #f5c6cb;");
                    HttpSession s = request.getSession();
                    s.setAttribute("trans_msg", msg);

                    response.sendRedirect("new_transaction.jsp");
                }

            } else {
                Message msg = new Message("Account is Deactivate -Oops-", "error", "color: #721c24;background-color:#f8d7da;border: 1px solid transparent;border-color: #f5c6cb;");

                HttpSession s = request.getSession();
                s.setAttribute("trans_msg", msg);

                response.sendRedirect("new_transaction.jsp");
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
