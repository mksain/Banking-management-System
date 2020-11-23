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
                        <li><a href="new_employee.html">Employee</a></li>
                        <li><a href="">Department</a></li>

                    </ul>
                </div>
            </div>
        </header>

        <section id="">
            <div class="dash">

                <div class="dash-item1">

                    <h2><i class="fas fa-building"></i>Department Dashboard</h2>
                    <nav>
                        <a href="" id="active-button"><i class="fas fa-plus-square"></i>Add New Department</a>
                        <a href="edit_department.html"><i class="fas fa-search"></i>Edit Department Detail</a>
                        <a href="department_list.html"><i class="fas fa-list"></i> Department List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>Add New Department</h2>
                    <form action="" method="">

                        <label for="fname">Department ID</label>
                        <input type="text" id="fname" name="firstname" placeholder="Department ID.." required>

                        <label for="fname">Department Name</label>
                        <input type="text" id="fname" name="firstname" placeholder="Name of Branch" required="">
                        <label for="lname">Head of Department</label>
                        <input type="text" id="lname" name="lastname" placeholder="Employee ID" required="">

                        <label for="lname">Designation</label>
                        <input type="text" id="lname" name="lastname" placeholder="Designation" required="">

                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>