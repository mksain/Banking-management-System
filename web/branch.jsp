<%@page import="java.util.Random"%>
<%@page import="com.entities.Message"%>
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
                        <a href="" id="active-button"><i class="fas fa-plus-square"></i>Add New Branch</a>
                        <a href="edit_branch.jsp"><i class="fas fa-search"></i>Edit Branch Detail</a>
                        <a href="branch_list.jsp"><i class="fas fa-list"></i> Branches List</a>
                    </nav>
                </div>
                <div class="dash-item2">

                    <h2>Add New Branch</h2>
                    <%                        Message m = (Message) session.getAttribute("msg");

                        if (m != null) {
                    %>
                    <div>
                        <h3 style="<%=m.getCssClass()%>padding: 10px;text-align: center;margin: 0px 20%;">
                            <%=m.getContent()%></h3>

                    </div>
                    <%
                            session.removeAttribute("msg");
                        }
                    %>
                    <form action="New_Branch_servlet" method="post">
                        <%
                        Random rd=new Random();
                        int data=rd.nextInt(10000+1);
                        %>
                        <label for="fname">Branch ID</label>
                        <input type="text" id="fname" name="branch_id" placeholder="Branch ID.." readonly value="SBI<%=data%>">

                        <label for="fname">Branch Name</label>
                        <input type="text" id="fname" name="branch_name" placeholder="Name of Branch">
                        <label for="lname">Branch City</label>
                        <input type="text" id="lname" name="branch_city" placeholder="City">
                        <label for="lname">Branch Phone</label>
                        <input type="text" id="lname" name="branch_phone" placeholder="phone no..">
                        <label for="lname">Manager ID</label>
                        <input type="text" id="lname" name="manager_id" placeholder="Employee ID..">

                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>