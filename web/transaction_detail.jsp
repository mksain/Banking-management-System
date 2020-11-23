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
            <div class="header">
                <div>
                    <h2>State Bank of India</h2>
                </div>
                <div>
                    <ul>
                        <li><a href="new_customer.jsp">Customer</a></li>
                        <li><a href="">Account</a></li>
                        <li><a href="new_transaction.jsp">Transaction</a></li>
                        <li><a href="new_loan.jsp">Loan</a></li>
                    </ul>
                </div>
                 <div>
                    <ul>
                        <%
                           Employee u=(Employee)session.getAttribute("currentEmployee");
                        try
                        {
                           String name =u.getName();
                        %>
                        <li><a href="#" style="border:none; font-size: 16px;"><span class="fa fa-user-circle"></span><%=name%></a></li>
                        <li><a href="home.jsp" style="border:none;font-size: 16px;">
                                <span class="fa fa-user-plus"></span>    Logout</a></li>
                                <%
                                }catch(Exception e)
                        {
                            response.sendRedirect("home.jsp");
                        }
                        %>
                    </ul>
                </div>
            </div>
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
                <div class="dash-item2">
                    <h2>Transaction Detail</h2>
                    <div class="search_customer">
                        <input type="text" name="" placeholder="Enter Account No.." pattern="[A-Za-z]{3}" title="Three letter country code">
                        <button>Search</button>
                        <input type="text" name="" placeholder="customer name" readonly="" style="border:none">
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
                                <tr>
                                    <td>25/08/22020 </td>
                                    <td>500</td>
                                    <td>Credit</td>	
                                    <td>10000</td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>