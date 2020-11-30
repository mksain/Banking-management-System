<%@page import="java.util.Random"%>
<%@page import="com.entities.Message"%>
<%@page import="com.entities.Employee" %>
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
                        <a href=""><i class="fas fa-user-plus"></i>New Loan Registration</a>
                        <a href="all_loan_detail.jsp"><i class="fas fa-search"></i>All Loans Detail</a>

                    </nav>
                </div>
                <div class="dash-item2">

                    <h2 id="">New Loan Registration</h2>

                    <%                        Message m = (Message) session.getAttribute("msg");

                        if (m != null) {
                    %>
                    <div >

                        <h3 style="<%=m.getCssClass()%>padding: 10px;text-align: center;margin: 0px 20%;"><%=m.getContent()%></h3>

                    </div>

                    <%
                            session.removeAttribute("msg");
                        }

                    %>
                    <%                        Random rd = new Random();
                                      int num = rd.nextInt(10000 + 2);

                    %>
                    <form action="New_Loan_servlet" method="post">
                        <label for="fname">Loan ID</label>
                        <input type="text" id="fname" name="loan_id" placeholder="Loan ID.." value="<%=num%>" readonly="">
                        <label for="fname">Account Number</label>
                        <input type="text" id="fname" name="account_no" placeholder="Account no..">
                        <label for="fname">Amount</label>
                        <input type="text" id="fname" name="amount" placeholder="Rs..">
                        <label for="lname">Interest Rate</label>
                        <input type="text" id="lname" name="interest_rate" placeholder="Interest Rate..">
                        <label for="lname">Duration</label>
                        <input type="text" id="lname" name="duration" placeholder="Duration..">
                        <label for="lname">Start Date</label>
                        <input type="text" id="date" name="start_date" readonly="">
                        <label for="lname">Due Amount</label>
                        <input type="text" id="lname" name="due_amount" placeholder="Due Amount..">
                        <%
                            request.setAttribute("number", num);

                        %>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </section>

        <script type="text/javascript">

            var today = new Date();

            var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();

            document.getElementById("date").value = date;

        </script>
    </body>
</html>