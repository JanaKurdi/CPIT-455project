<%-- 
    Document   : Users
    Created on : Oct 28, 2022, 12:23:08 AM
    Author     : Razan Alshaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- basic -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Tagrest website</title>
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- Fav icon-->
        <link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" />
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="stylesheetHome.css" type="text/css"/>
        <link rel="stylesheet" href="stylesheet_admin.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
        <link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>
    <body>
        <% if (session.getAttribute("userAdmin") != null) {
                DB.Database_connection user = new DB.Database_connection();
                ResultSet res = user.DisplayAllCustomers();
        %>
        <div class="header_section">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <img src="./images/Tagrest.jpg" width="60" height="60" class=" rounded-circle d-inline-block align-top text-light" alt="">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                               <a class="navbar-brand" href="index.html">Tagrest</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AdminPage1.jsp">Orders</a>
                            </li>
                        </ul>
                       <ul class="nav navbar-nav navbar-right">
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="./images/profile.png" alt="profile" width="30" height="30">
                                    <span class="name"> Admin </span>
                                    <i class="chevron-down" aria-hidden="true"></i>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">
                                    <li role="separator" class="divider"></li>
                                    <li>   <a class="dropdown-item"href="logout.jsp">
                                            <img src="./images/logout.png" width="15" height="15" alt="logout"> Log out</a></li>
                                </ul>
                            </div>
                        </ul>
                </nav>
            </div>
        </div>
        <!-- end of navigation bar section  --> 
        <br>
        <!-- start of Orders table  --> 
        <div class="container mt-5">
            <div class="row">
                <table class="table text-center mt-1 table-bordered ">
                    <thead>
                        <tr>
                            <th>First name</th>
                            <th>Last name</th>
                            <th> username</th>
                            <th> Email</th> 
                            <th> Address </th>
                            <th>Phone Number</th>
                        </tr>
                    </thead>
                    <%
                        while (res.next()) {%>
                    <tr>
                        <td><%= res.getString("Fname")%></td>
                        <td><%= res.getString("lname")%></td>
                        <td><%= res.getString("username")%></td>
                        <td><%= res.getString("email")%></td>
                        <td><%= res.getString("Address")%></td>
                        <td><%= res.getString("phone")%></td>
                    </tr>
                    <% }%>
                    </tbody>
                </table>
            </div> 
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br>

        <!-- copyright section -->

        <footer class="text-center text-white">
            <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                <img src="images/socialmedia.png" width="80" height="50" alt="socialmedia"/>
                <br>
                © 2022 Copyright:
                <a class="text-dark"> Design by Doaa , Jana , Razan , and Renad</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- end of copyright section -->       
        <%
                user.close();
            } else {
                response.sendRedirect("UnauthorizedPage.jsp");

            }
        %>
    </body>
</html>
