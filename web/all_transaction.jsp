<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.helper.javaconnect"%>
<%@page import="com.entities.Employee" %>
<%@page import="java.sql.*"%>
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
                        <a href="transaction_detail.jsp"><i class="fas fa-search"></i>Customer Transaction Detail</a>
                        <a href="#"><i class="fas fa-list"></i>All Transactions</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>All Transaction List</h2>

                    <div class="table_box">
                        <table id="table">

                            <tr>
                                <th>Account Number</th>
                                <th>Name</th>
                                <th>Date</th>
                                <th>Amount</th>
                                <th>Credit OR Debit</th>
                                <th>Total Balance</th>
                            </tr>
                            <tbody>

                                <%
                                    Connection conn = javaconnect.connectdb();
                                    try {
                                        String query = "select * from customer_transaction order by trans_date desc";

                                        PreparedStatement ps = conn.prepareStatement(query);

                                        ResultSet rs = ps.executeQuery();

                                        while (rs.next()) {
                                %>
                                <tr>
                                    <td><%=rs.getString("account_no")%></td>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("trans_date")%></td>
                                    <td><%=rs.getString("amount")%></td>
                                    <td><%=rs.getString("trans_type")%></td>	
                                    <td><%=rs.getString("balance")%></td>

                                </tr>

                                <%
                                        }
                                    } catch (Exception e) {
                                        JOptionPane.showMessageDialog(null, e);
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