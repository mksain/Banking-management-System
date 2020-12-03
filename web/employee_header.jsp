<%@page import="com.entities.Employee"%>
<div class="header">
    <div>
        <h2>State Bank of India</h2>
    </div>
    <div>
        <ul>
            <li><a href="branch.jsp">Branch</a></li>
            <li><a href="new_employee.jsp">Employee</a></li>
            <li><a href="new_department.jsp">Department</a></li>

        </ul>
    </div>
    <div>
        <ul>
            <%
                Employee u = (Employee) session.getAttribute("currentEmployee");
                if (u != null && u.getDepartment_id().equals("8897")) {
                    String name = u.getName();
            %>
            <li><a href="#" style="border:none; font-size: 16px;"><span class="fa fa-user-circle"></span><%=name%></a></li>
            <li><a href="Logout_Employee_servlet" style="border:none;font-size: 16px;">
                    <span class="fa fa-user-plus"></span>    Logout</a></li>
                    <li><a href="new_customer.jsp" style="border:none;font-size: 16px;">
                    <span class="fa fa-th-large"></span> Administrator</a></li>
                    <%
                        } else {
                            response.sendRedirect("home.jsp");
                        }
                    %>
        </ul>
    </div>
</div>