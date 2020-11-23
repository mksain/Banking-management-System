
<%@page import="com.helper.javaconnect"%>
<%@page import="java.sql.*" %>
<%@page import="com.entities.Message"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="utf-8" >
        <meta name="viewport" content="width=device-width ,initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="">
        <link rel="stylesheet" type="text/css" href="">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">

    </head>
    <body>
        
        <%
          Connection conn=javaconnect.connectdb();
        %>
        <header>
            <div>
                <!-- Image and text -->
                <!-- Image and text -->
                <nav class="navbar navbar-expand-lg navbar-light bg-info">
                    <a class="navbar-brand text-white" href="#">Banking Management System</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                            <li class="nav-item active">
                                <a class="nav-link text-white" href="#">About<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="#">Link</a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
        </header>
        <!-- Container  Part     -->
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm-5" style="display: flex; align-items:center">
                    <div class="">

                        <img src="images/home.svg" class="rounded col-md-12" alt="Cinque Terre" > 
                    </div>
                </div>
             
                <div class="col-sm-7">
                    <div style="background-color: #e8e8e8;padding: 30px;
                         }">
                        <h2 style="text-align: center;">Please Login here</h2>
                        
                        
                        <%
                          Message m=(Message)session.getAttribute("msg");
                          
                        if(m!=null)
                        {
                            %>
                            <div class="alert <%=m.getCssClass()%>" role="alert">
                                <%=m.getContent()%>
                            </div>
                            
                            <%
                            session.removeAttribute("msg");
                            
                        }
                        
                        %>
                        
                        
                        
                        
                        <form action="Login_Employee_servlet" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Employee ID</label>
                                <input type="text" required class="form-control" name="employee_id" value=""id="exampleInputEmail1" aria-describedby="emailHelp">

                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input name="password" required="" type="password" class="form-control" id="exampleInputPassword1">
                            </div>
                           
                            <button type="submit" class="btn btn-info">Login  <i class="fas fa-sign-in-alt"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                        
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>