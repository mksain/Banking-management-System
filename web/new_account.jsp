<%@page import="com.entities.Message"%>
<%@page import="com.entities.Customer"%>
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
                        <li><a href="Logout_Employee_servlet" style="border:none;font-size: 16px;">
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

                    <h2><i class="fas fa-user-circle"></i>Account Dashboard</h2>
                    <nav>
                        <a href=""><i class="fas fa-user-plus"></i>Open New Account</a>
                        <a href="search_account.jsp"><i class="fas fa-search"></i>Search Account</a>
                        <a href="account_list.jsp"><i class="fas fa-list"></i>Accounts List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    
                    <%
                    Customer data=(Customer)session.getAttribute("search_customer");
                        
                    %>
                    <h2>New Account</h2>
                    
                     <%
                    Message m=(Message)session.getAttribute("msg");
                    
                    
                    if(m!=null)
                    {
                        %>
                         <div>
                        <h3 style="<%=m.getCssClass()%>padding: 10px;text-align: center;margin: 0px 20%;">
                            <%=m.getContent()%></h3>
                        
                    </div>
                        <%
                        session.removeAttribute("msg");
                    }
                    %>
                    <form action="New_Account_servlet" method="post">
                        
                        <%
                        String account="";
                        String aadhar="";
                        if(data!=null)
                        {
                            account=data.getAccount_no();
                            aadhar=data.getAadhar();
                          session.removeAttribute("search_customer");
                        }
                        
                        %>
                        <div class="search_customer" style="padding:10px 0px;">
                            <input type="text" name="aadhar_no" placeholder="Enter Aadhar No.." value="<%=aadhar%>">
                            <button type="submit" name="Submit" value="Search">Search</button>
                        </div>
                    
                        <label for="fname">Account No.</label>
                        <input type="text" id="fname" name="account_no" placeholder="Account no." readonly="" required="" value="<%=account%>">
                        <label for="account_type">Account Type</label>
                        <select id="account_type" name="account_type">
                            <option value="Saving">Saving</option>
                            <option value="Current">Current</option>
                        </select>
                        <label for="fname">Interest Rate</label>
                        <input type="text" id="fname" name="interest_rate" placeholder="Address..">
                        <label for="lname">Balance</label>
                        <input type="text" id="lname" name="balance" placeholder="Rs.">
                        <label for="lname">Account Status</label>
                        <select id="accont_status" name="ac_status">
                            <option style="color:green" >Active</option>
                            <option style="color:red" selected="">Deactive</option>
                        </select>

                        <input type="submit" name="Submit" value="Submit" >
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>