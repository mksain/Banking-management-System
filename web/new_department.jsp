<%@page import="java.util.Random"%>
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

                    <h2><i class="fas fa-building"></i>Department Dashboard</h2>
                    <nav>
                        <a href="" id="active-button"><i class="fas fa-plus-square"></i>Add New Department</a>
                        <a href="edit_department.jsp"><i class="fas fa-search"></i>Edit Department Detail</a>
                        <a href="department_list.jsp"><i class="fas fa-list"></i> Department List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>Add New Department</h2>
                    
                    <%
                    Random rd=new Random();
                    int value=rd.nextInt(100000+1);
                    %>
                    <form action="New_Department_servlet" method="post">

                        <label for="fname">Department ID</label>
                        <input type="text" id="fname" name="dep_id" placeholder="Department ID.." required readonly value="<%=value%>">

                        <label for="fname">Department Name</label>
                        <input type="text" id="fname" name="dep_name" placeholder="Name of Branch" required="">
                        <label for="lname">Head of Department</label>
                        <input type="text" id="lname" name="hod_name" placeholder="Employee ID" required="">

                        <label for="lname">Designation</label>
                        <select name="designation">
                            <option>Accountant</option>
                            <option>Cashier</option>
                            <option>Manager</option>
                            <option>store Keepar</option>
                              <option>Peon</option>
                                <option>other</option>
                        </select>

                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>