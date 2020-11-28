<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page import="com.helper.javaconnect"%>
<%@page import="com.entities.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Dashboard</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/employee.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
        </header>

        <section id="">
            <div class="dash">

                <div class="dash-item1">
                    <h2><i class="fas fa-exchange-alt"></i>Transaction Dashboard</h2>
                    <nav>
                        <a href="new_transaction.jsp"><i class="fas fa-user-plus"></i>New Transaction</a>	
                        <a href="#"><i class="fas fa-search"></i>Customer Transaction Detail</a>
                        <a href="all_transaction.jsp"><i class="fas fa-list"></i>All Transactions</a>
                    </nav>
                </div>
                <%
               String name="";
                %>
                <div class="dash-item2">
                    <h2>Transaction Detail</h2>
                    <div class="search_customer">
                        <form action="transaction_detail.jsp" method="post">
                        <input type="text" name="account_no" placeholder="Enter Account No.." >
                        <button>Search</button>
                        <input type="text" name="name" placeholder="customer name" value="<%=name%>" readonly="" style="border:none"></form>
                    </div>
                    <div class="table_box">
                        <table id="table">
                            
                           
                            <tr>
                                <th>Date</th>
                                <th>Amount</th>
                                <th>Credit OR Debit</th>
                                <th>Total Balance</th>
                            </tr>
                            <tbody>
                                 <%
                           String account_no= request.getParameter("account_no");
                           
                            if(account_no!=null)
                            {
                                Connection conn=javaconnect.connectdb();
                            
                            try
                            {
                                String query="select * from customer_transaction where account_no='"+account_no+"'order by trans_date desc";
                                PreparedStatement ps=conn.prepareStatement(query);
                                
                                ResultSet rs=ps.executeQuery();
                                
                                while(rs.next())
                                {
                                  name=rs.getString("name");
                                   %>
                                  <tr>
                                      <td><%=rs.getString("trans_date")%></td>
                                    <td><%=rs.getString("amount")%></td>
                                    <td><%=rs.getString("trans_type")%></td>	
                                    <td><%=rs.getString("balance")%></td>

                                </tr>
                                
                                <% 
                                }
                                
                                
                            }catch(Exception e)
                            {
                                JOptionPane.showMessageDialog(null,e);
                            }
                            
                            }
                           
                            
                            %>
                            
                            
                            
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>