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
                        <a href="#"id="active-button"><i class="fas fa-search"></i>Edit Branch Detail</a>
                        <a href="branch_list.jsp"><i class="fas fa-list"></i> Branches List</a>
                    </nav>
                </div>
                <div class="dash-item2">
                    <h2>Edit Branch Detail</h2>
                    <div class="search_customer">
                        <input type="text" name="" placeholder="Enter Branch ID">
                        <button style="padding:9px 30px"><i class="fas fa-sign-in-alt" style="font-size:16px;"></i></button>
                    </div>
                    <form action="" method="">


                        <label for="fname">Branch ID</label>
                        <input type="text" id="fname" name="firstname" placeholder="Branch ID..">

                        <label for="fname">Branch Name</label>
                        <input type="text" id="fname" name="firstname" placeholder="Name of Branch">
                        <label for="lname">Branch City</label>
                        <input type="text" id="lname" name="lastname" placeholder="City">
                        <label for="lname">Branch Phone</label>
                        <input type="text" id="lname" name="lastname" placeholder="phone no..">
                        <label for="lname">Manager ID</label>
                        <input type="text" id="lname" name="lastname" placeholder="Employee ID..">

                        <div>
                            <input type="submit" value="Update" style="width:20%;">
                            <input type="submit" value="Exit" style="width:20%;"></div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>