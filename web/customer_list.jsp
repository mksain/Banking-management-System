<%@page import="com.helper.javaconnect"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.entities.Employee" %>
<%@page import="java.sql.*" %>
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
                        <a href=""><i class="fas fa-list"></i>Customer List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>Customers List</h2>

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
                                <th>Country</th>
                            </tr>
                            <tbody>
                                <%
                                Connection conn=javaconnect.connectdb();
                                    try {
                                        String query = "select * from customer";

                                        PreparedStatement ps = conn.prepareStatement(query);

                                        ResultSet rs = ps.executeQuery();

                                        while (rs.next()) {

                                %>
                                <tr>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("aadhar")%></td>

                                    <td><%=rs.getString("address")%></td>

                                    <td><%=rs.getString("phone")%></td>

                                    <td><%=rs.getString("email")%></td>

                                    <td><%=rs.getString("branch_id")%></td>

                                    <td><%=rs.getString("account_no")%></td>
                                     <td><%=rs.getString("country")%></td>

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