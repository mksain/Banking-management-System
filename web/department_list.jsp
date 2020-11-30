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
                        <a href="new_department.jsp"><i class="fas fa-plus-square"></i>Add New Department</a>
                        <a href="edit_department.jsp"><i class="fas fa-search"></i>Edit Department Detail</a>
                        <a href="#" id="active-button"><i class="fas fa-list"></i> Department List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>List of Departments</h2>
                    <div class="table_box">
                        <table id="table">
                            <tr>
                                <th>Department ID</th>
                                <th>Department Name</th>
                                <th>Head of Department</th>
                                <th>Designation</th>

                            </tr>
                            <tbody>
                                <tr>
                                    <td>4225</td>
                                    <td>Manish</td>
                                    <td>Mathura</td>
                                    <td>6396022397</td>	


                                </tr>
                                <tr>
                                    <td>4225</td>
                                    <td>Anna Reddy</td>
                                    <td>Mathura</td>
                                    <td>6396022397</td>	


                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>