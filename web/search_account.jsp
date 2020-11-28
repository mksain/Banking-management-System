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
            <%@include file="header.jsp" %>         
        </header>

        <section id="">
            <div class="dash">

                <div class="dash-item1">
                    <h2><i class="fas fa-user-circle"></i>Account Dashboard</h2>
                    <nav>
                        <a href="new_account.jsp"><i class="fas fa-user-plus"></i>Open New Account</a>
                        <a href=""><i class="fas fa-search"></i>Search Acccount</a>
                        <a href="account_list.jsp"><i class="fas fa-list"></i>Accounts List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>Search Account</h2>
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
                    
                    
                    <div class="search_customer">
                        <form action="Search_Account_servlet" method="post">
                        <input type="text" name="account_no" placeholder="Enter Account No.." >
                        <button type="submit">Search</button>
                        </form>
                    </div>
                    <div class="table_box">
                        <table id="table">
                            <tr>
                                <th>Account No.</th>
                                <th>Customer ID</th>
                                <th>Account Type</th>
                                <th>Interest Rate</th>
                                <th>Balance</th>
                                <th>Account Status</th>
                            </tr>
                            <tbody>
                                
                                <%
                                Account data=(Account)session.getAttribute("account_data");
                                
                                if(data!=null)
                                {
                                    String account_no=data.getAccount_no();
                                    String aadhar=data.getAadhar_id();
                                    String ac_type=data.getAccount_type();
                                    String interest=data.getInterest_rate();
                                    String balance=data.getBalance();
                                    String ac_status=data.getAccount_status();
                                %>
                                <tr>
                                    <td><%=account_no%></td>
                                    <td><%=aadhar%></td>
                                    <td><%=ac_type%></td>
                                    <td><%=interest%></td>
                                    <td><%=balance%></td>
                                    <td><%=ac_status%></td>
                                </tr>
                                           <% 
                                           
                                           session.removeAttribute("account_data");
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