
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
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
                    <h2><i class="fas fa-user-circle"></i>Account Dashboard</h2>
                    <nav>
                        <a href="new_account.jsp"><i class="fas fa-user-plus"></i>Open New Account</a>
                        <a href="search_account.jsp"><i class="fas fa-search"></i>Search Acccount</a>
                        <a href=""><i class="fas fa-list"></i>Accounts List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>Accounts List</h2>

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
                                Connection conn=javaconnect.connectdb();
                                try
                                {
                                    String query="select * from account";
                                    PreparedStatement ps=conn.prepareStatement(query);
                                    
                                    ResultSet rs=ps.executeQuery();
                                    
                                    while(rs.next())
                                    {
                                        %>
                                <tr>
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(6)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%> %</td>
                                    <td><%=rs.getString(4)%> Rs.</td>
                                    <td class="status"><%=rs.getString(5)%></td>
                                   
                                </tr>
                                <%
                                 }
                                    
                                }catch(Exception e)
                                {
                                    JOptionPane.showMessageDialog(null,e);
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