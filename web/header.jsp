<%@page import="com.helper.javaconnect"%>
<%@page import="com.entities.Employee" %> 

<div class="header">
                <div>
                    <h2>State Bank of India</h2>
                </div>
                <div>
                    <ul>
                        <li><a href="new_customer.jsp">Customer</a></li>
                        <li><a href="new_account.jsp">Account</a></li>
                        <li><a href="new_transaction.jsp">Transaction</a></li>
                        <li><a href="new_loan.jsp">Loan</a></li>
                    </ul>
                </div>
                 <div>
                    <ul>
                        <%
                           Employee u=(Employee)session.getAttribute("currentEmployee");
                        if(u!=null)
                        {
                           String name =u.getName();
                        %>
                        <li><a href="#" style="border:none; font-size: 16px;"><span class="fa fa-user-circle"></span><%=name%></a></li>
                        <li><a href="Logout_Employee_servlet" style="border:none;font-size: 16px;">
                                <span class="fa fa-user-plus"></span>    Logout</a></li>
                                <%
                                }else
                        {
                            response.sendRedirect("home.jsp");
                        }
                        %>
                    </ul>
                </div>
                    
                        <%-----Modal profile box----%>
                        
                       