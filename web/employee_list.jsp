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
            <div class="header">
                <div>
                    <h2>State Bank of India</h2>
                </div>
                <div>
                    <ul>
                        <li><a href="branch.html">Branch</a></li>
                        <li><a href="#">Employee</a></li>
                        <li><a href="new_department.html">Department</a></li>

                    </ul>
                </div>
            </div>	
        </header>

        <section id="">
            <div class="dash">

                <div class="dash-item1">

                    <h2><i class="fas fa-user-tie"></i>Employee Dashboard</h2>
                    <nav>
                        <a href="new_employee.html"><i class="fas fa-plus-square"></i>Add New Employee</a>
                        <a href="edit_employee.html"><i class="fas fa-search"></i>Edit Employee Detail</a>
                        <a href="#" id="active-button"><i class="fas fa-list"></i> List of Employees</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>List of All Employees</h2>
                    <div class="table_box">
                        <table id="table">
                            <tr>
                                <th>Employee ID</th>
                                <th>Employee Name</th>
                                <th>Address</th>
                                <th>Phone no.</th>
                                <th>Email ID</th>
                                <th>Account No.</th>
                                <th>Branch ID</th>
                                <th>Department ID</th>
                            </tr>
                            <tbody>
                                <tr>
                                    <td>4225</td>
                                    <td>Manish</td>
                                    <td>Mathura</td>
                                    <td>6396022397</td>	
                                    <td>mkcomputeredu03@gmail.com</td>
                                    <td>45870100005455</td>
                                    <td>BarBo1236</td>
                                    <td>7899566</td>

                                </tr>
                                <tr>
                                    <td>4225</td>
                                    <td>Anna Reddy</td>
                                    <td>Mathura</td>
                                    <td>6396022397</td>	
                                    <td>mkcomputeredu03@gmail.com</td>
                                    <td>45870100005455</td>
                                    <td>BarBo1236</td>
                                    <td>7899566</td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>

        <script type="text/javascript" src="Jquery/jquery.js"></script>
        <script type="text/javascript">
            $(document).ready(function ()
            {
                alert(1);
            });
        </script>
    </body>
</html>