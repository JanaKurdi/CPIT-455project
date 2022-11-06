<%-- 
    Document   : profile.jsp
    Created on : Nov 3, 2022, 11:51:23 PM
    Author     : Razan Alshaikh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> <!--english language-->
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
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css" type="text/css"/>
        <link rel="stylesheet" href="stylesheetHome.css" type="text/css"/>
        <link rel="stylesheet" href="stylesheetProfile.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css"/>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <body>
        <% if (session.getAttribute("userCustomer") != null) {
                DB.Database_connection user = new DB.Database_connection();
        %>
        <!-- navigation bar section  --> 
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
                                <a class="nav-link" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ContactUs.jsp">Contact us</a>
                            </li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="./images/profile.png" alt="profile" width="30" height="30">
                                    <span class="name">  </span>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">
                                    <li> <a class="dropdown-item"  href="profile.jsp">
                                            <img src="./images/account.png" width="15" height="15"alt="account">My Account</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li>
                                        <a class="dropdown-item"href="logout.jsp">
                                            <img src="./images/logout.png" width="15" height="15" alt="logout"> Log out</a></li>
                                </ul>
                            </div>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- end of navigation bar section  --> 
        <br>
        <div class="container">
            <div class="col">
                <div class="row">

                    <h1> Personal Info </h1>
                    <p> You can change your information by filling the information below: </p>
                    <h4>First name</h4>
                    <input type="text" class="input "name="fname" value="Razan" placeHolder="Enter your first name"><!-- comment -->
                    <h4>last name</h4>
                    <input type="text" class="input"name="lname" value="Alshaikh" placeHolder="Enter your last name"><!-- comment -->
                    <h4>Email</h4>
                    <input type="text" class="input"name="email" value="razan@gmail.com" placeHolder="email@gmail.com"><!-- comment -->
                    <h4>Address </h4>
                    <input class="input"name="Address" type="text" value="KSA Jeddah"placeHolder="Enter your Address ">
                    <h4>Phone Number</h4>
                    <input type="text" name="phone" class="input" value="0549226961"placeHolder="05########"><!-- comment -->
                    <h4>Password</h4>
                    <input class="input"name="password" type="text" placeHolder="Only Upper-Lower Letters">
                    <h4>Confirm password</h4>
                    <input class="input"name="password" type="text" placeHolder="Enter password again">

                </div>
                <div class="btn">
                    <a href="SuccessfullyUpdate.jsp"> <button type="button" class="btn btn-primary btn-block btn-lg" style= "background-color: #8b67ce">Update</button></a> 
                </div>
            </div>
        </div>

        <!-- end of container -->

        <footer class="text-center text-white">
            <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.1);">
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
