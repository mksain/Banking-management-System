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
                        <li><a href="new_account.jsp">Account</a></li>
                        <li><a href="new_transaction.jsp">Transaction</a></li>
                        <li><a href="">Loan</a></li>
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

                    <h2><i class="fas fa-hand-holding-usd"></i>Loan Dashboard</h2>
                    <nav>
                        <a href="new_loan.jsp"><i class="fas fa-user-plus"></i>New Loan Registration</a>
                        <a href=""><i class="fas fa-search"></i>All Loans Detail</a>

                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>All Loans Details</h2>

                    <div class="table_box">
                        <table id="table">
                            <tr>
                                <th>Loan ID</th>
                                <th>Account No.</th>
                                <th>Amount</th>
                                <th>Interest Rate</th>
                                <th>Duration</th>
                                <th>Start Date</th>
                                <th>Due Amount</th>

                            </tr>
                            <tbody>
                                <tr>
                                    <td>1076</td>
                                    <td>45870100001471</td>
                                    <td>20000</td>	
                                    <td>5.9%</td>
                                    <td>18 months</td>
                                    <td>20/09/2020</td>
                                    <td>19000</td>	

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>