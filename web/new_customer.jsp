<%@page import="com.entities.Message"%>
<%@page import="com.entities.Employee" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                        <a class="active" href="" ><i class="fas fa-user-plus"></i>New Customer</a>
                        <a href="search_customer.jsp"><i class="fas fa-search"></i>Search Customer</a>
                        <a href="customer_list.jsp"><i class="fas fa-list"></i>Customer List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>New Customer</h2>
                    <%
                        Message m = (Message) session.getAttribute("customer_msg");

                        if (m != null) {
                    %>

                    <div >

                        <h3 style="<%=m.getCssClass()%>padding: 10px;text-align: center;margin: 0px 20%;"><%=m.getContent()%></h3>

                    </div>

                    <%
                            session.removeAttribute("customer_msg");
                        }
                    %>


                    <form action="New_Customer_servlet" method="post">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" placeholder="Your name..">
                        <label for="Aadhar">Aadhar No.</label>
                        <input type="text" id="Aadhar" name="aadhar_no" placeholder="Aadhar no...">
                        <label for="Address">Address</label>
                        <input type="text" id="Address" name="address" placeholder="Address..">
                        <label for="Phone-no">Phone no</label>
                        <input type="text" id="Phone-no" name="phone_no" placeholder="Phone No.">
                        <label for="Email">Email ID</label>
                        <input type="Email" id="Email" name="email" placeholder="Your last name..">
                        <label for="Branch-id">Branch ID</label>
                        <input type="text" id="Branch-id" name="branch_id" placeholder="Branch ID">
                        <label for="Account-no">Account No.</label>
                        <input type="text" id="Account-no" name="account_no" placeholder="Customer Account no...">
                        <label for="country">Country</label>
                        <select id="country" name="country">
                            <option value="India">India</option>
                            <option value="Other">Other</option>
                        </select>

                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>