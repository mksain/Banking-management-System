<%@page import="com.entities.Account"%>
<%@page import="com.entities.Message"%>
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
                        <li><a href="">Transaction</a></li>
                        <li><a href="new_loan.jsp">Loan</a></li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <%
                            String employee_id="";
                            Employee u = (Employee) session.getAttribute("currentEmployee");
                            try {
                                String name = u.getName();
                                employee_id=String.valueOf(u.getId());
                        %>
                        <li><a href="#" style="border:none; font-size: 16px;"><span class="fa fa-user-circle"></span><%=name%></a></li>
                        <li><a href="home.jsp" style="border:none;font-size: 16px;">
                                <span class="fa fa-user-plus"></span>    Logout</a></li>
                                <%
                                    } catch (Exception e) {
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
                        <a href=""><i class="fas fa-user-plus"></i>New Transaction</a>
                        <a href="transaction_detail.jsp"><i class="fas fa-search"></i>Customer Transaction Detail</a>
                        <a href="all_transaction.jsp"><i class="fas fa-list"></i>All Transactions</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>Make New Transaction</h2>

                    <%
                        Message m = (Message) session.getAttribute("trans_msg");

                        if (m != null) {
                    %>
                    <div>
                        <h3 style="<%=m.getCssClass()%>padding: 10px;text-align: center;margin: 0px 20%;">
                            <%=m.getContent()%></h3>

                    </div>
                    <%
                            session.removeAttribute("trans_msg");
                        }

                    %>

                    <%                       Account data = (Account) session.getAttribute("account_data");

                        String account_no = "";
                        String ac_status = "";
                        String balance = "";
                        if (data != null) {
                            account_no = data.getAccount_no();
                            ac_status = data.getAccount_status();
                            balance = data.getBalance();

                            session.removeAttribute("account_data");
                        }
                    %>
                    <form action="Transaction_account_search_servlet" method="post" style="padding:0px 50px;">
                        <div class="search_customer" style="padding:10px;">

                            <input type="text" name="account_no" placeholder="Account Number.." value="<%=account_no%>">
                            <button type="submit" style="padding:9px 30px"><i class="fas fa-sign-in-alt" style="font-size:16px;"></i></button>
                        </div>
                    </form>

                            <form action="" method="post">
                        <div class="search_customer" style="padding:10px; font-size: 20px">

                            <div class="status_detail">
                                <label>Account Status</label>
                                <input type="text" name="" placeholder="" readonly="" value="<%=ac_status%>" <%if (ac_status.equals("Active")) {
                                       %>
                                       style="color:green;"
                                       <%
                                       } else {
                                       %>
                                       style="color:red;"       
                                       <%
                                    }%>>
                                <label>Balance</label>
                                <input type="text" name="" placeholder="" readonly="" value="<%=balance%>" style="background-color:#ececec;">
                            </div>
                        </div>
                        <label for="fname">Enter Amount</label>
                        <input type="text" id="fname" name="firstname" placeholder="RS..">
                        <label for="lname">Credit OR Debit</label>
                        <select id="accont_status" name="ac_status">
                            <option style="color:green" >Credit + </option>
                            <option style="color:red" selected="">Debit - </option>
                        </select>
                        <label for="fname">Date & Time</label>
                        <input type="text" id="fname" name="firstname" placeholder="Date & Time">
                        <label for="fname">Employee ID</label>
                        <input type="text" id="fname" name="firstname" placeholder="Employee ID.." readonly="" value="<%=employee_id%>">

                        <label for="lname">Loan ID</label>
                        <input type="text" id="lname" name="lastname" placeholder="loan id..">



                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>