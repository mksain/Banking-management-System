<%@page import="java.sql.Connection"%>
<%@page import="com.helper.javaconnect"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Head of Dipartment</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/admin.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <%@include file="employee_header.jsp" %>
            <jsp:include page="employee_header.jsp"/>
        </header>

        <section id="">
            <div class="dash">

                <div class="dash-item1">

                    <h2><i class="fas fa-landmark"></i>Branch Dashboard</h2>
                    <nav>
                        <a href="branch.jsp"><i class="fas fa-plus-square"></i>Add New Branch</a>
                        <a href="edit_branch.jsp"><i class="fas fa-search"></i>Edit Branch Detail</a>
                        <a href="#" id="active-button"><i class="fas fa-list"></i> Branches List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>List of All Branches</h2>
                    <div class="table_box">
                        <table id="table">
                            <tr>
                                <th>Branch ID</th>
                                <th>Branch Name</th>
                                <th>Branch City</th>
                                <th>Branch Phone</th>
                                <th>Manager ID</th>
                            </tr>
                            <tbody>
                                
                                <%
                                Connection conn=javaconnect.connectdb();
                                try
                                {
                                    String query="select * from branch";
                                    PreparedStatement ps=conn.prepareStatement(query);
                                    
                                    ResultSet rs=ps.executeQuery();
                                    
                                    while(rs.next())
                                    {
                                        %>
                                 <tr>
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>	
                                    <td><%=rs.getString(5)%></td>

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