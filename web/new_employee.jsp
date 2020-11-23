
<%@page import="java.util.*" %>
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
        
        <%
        Random rd=new Random();
        int num=rd.nextInt(10000+1);
        %>
        <header>
            <div class="header">
                <div>
                    <h2>State Bank of India</h2>
                </div>
                <div>
                    <ul>
                        <li><a href="branch.html">Branch</a></li>
                        <li><a href="">Employee</a></li>
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
                        <a href="" id="active-button"><i class="fas fa-plus-square"></i>Add New Employee</a>
                        <a href="edit_employee.html"><i class="fas fa-search"></i>Edit Employee Detail</a>
                        <a href="employee_list.html"><i class="fas fa-list"></i> List of Employees</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>Add New Employee</h2>
                    <form action="Register_Employee_servlet" method="post">

                        <label for="fname">Employee ID</label>
                        <input type="text" id="fname" name="employee_id" value="<%=num%>" readonly>

                        <label for="name">Name</label>
                        <input type="text" id="name" name="employee_name" placeholder="employee name">
                        <label for="address">Address</label>
                        <input type="text" id="address" name="employee_address" placeholder="Address..">
                        <label for="phone">Phone</label>
                        <input type="text" id="phone" name="employee_phone" placeholder="phone no..">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="employee_email" placeholder="Email id..">
                        <label for="account_no">Account No.</label>
                        <input type="text" id="account_no" name="employee_account_no" placeholder="Account no..">
                        <label for="branch_id">Branch ID</label>
                        <input type="text" id="branch_id" name="employee_branch_id" placeholder="Branch id..">
                        <label for="department_id">Department ID</label>
                        <input type="text" id="department_id" name="employee_department_id" placeholder="Department id..">
                         <label for="password">Employee Password</label>
                        <input type="text" id="password" name="employee_password" placeholder="Password">

                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </section>
        
        
    </body>
</html>