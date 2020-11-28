<%@page import="com.helper.javaconnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
                                <th>Loan Date</th>
                                <th>Due Amount</th>

                            </tr>
                            <tbody>
                                
                                <%
                        Connection conn=javaconnect.connectdb();
                                try
                                {
                                    String query="select * from loan order by start_date desc";
                                    PreparedStatement ps=conn.prepareStatement(query);
                                    
                                    ResultSet rs=ps.executeQuery();
                                    while(rs.next())
                                    {
                                        %>
                                <tr>
                                    <td><%=rs.getString("loan_id")%></td>
                                    <td><%=rs.getString("account_no")%></td>
                                    <td><%=rs.getString("amount")%></td>	
                                    <td><%=rs.getString("interest_rate")%> %</td>
                                    <td><%=rs.getString("duration")%> Month</td>
                                    <td><%=rs.getString("start_date")%></td>
                                    <td><%=rs.getString("due_amount")%></td>	

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