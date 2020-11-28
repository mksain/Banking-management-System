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
            <%@include file="header.jsp" %>
        </header>

        <section id="">
            <div class="dash">

                <div class="dash-item1">
                    <h2><i class="fab fa-cuttlefish"></i>Customer Dashboard</h2>
                    <nav>
                        <a href="new_customer.jsp"><i class="fas fa-user-plus"></i>New Customer</a>
                        <a href="search_customer.jsp"><i class="fas fa-search"></i>Search Customer</a>
                        <a href="customer_list.jsp"><i class="fas fa-list"></i>Customer List</a>
                    </nav>
                </div>
                
               
                <div class="dash-item2">
                    <h2>Search Customer</h2>
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
                        <form action="Search_Customer_servlet" method="post" style="padding:0px;">
                        <input type="text" name="aadhar_no" placeholder="Enter Aadhar No..">
                        <button type="submit">Search</button>
                        </form>
                    </div>
                    
                    
                   
                    <div class="table_box">
                        <table id="table">
                            <tr>
                                <th>Name</th>
                                <th>Aadhar No.</th>
                                <th>Address</th>
                                <th>Phone no.</th>
                                <th>Email ID</th>
                                <th>Branch ID</th>
                                <th>Account No.</th>
                            </tr>
                            <tbody>
                                
                                <%
                                Customer data=(Customer)session.getAttribute("search_employee");
                                
                                if(data!=null)
                                {
                                    String name=data.getName();
                                    String aadhar=data.getAadhar();
                                    String address=data.getAddress();
                                    String phone=data.getPhone();
                                    String email=data.getEmail();
                                    String branch=data.getBranch_id();
                                    String account=data.getAccount_no();
                                    
                                    %>
                              
                                <tr>
                                    <td><%=name%></td>
                                    <td><%=aadhar%></td>
                                    <td><%=address%></td>
                                    <td><%=phone%></td>
                                    <td><%=email%></td>
                                    <td><%=branch%></td>
                                    <td><%=account%></td>

                                </tr>
                                <%
                                session.removeAttribute("search_employee");
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