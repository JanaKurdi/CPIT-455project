<%-- 
    Document   : Shop
    Created on : Oct 27, 2022, 3:53:43 PM
    Author     : duaas
--%>

<%@page import="com.mysql.cj.protocol.Resultset"%>
        
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
        <style type="text/css">
            .fa_custom {
                color: #0099CC
            }
        </style>

    </head>
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
                            <li  class="nav-item" >
                                <a href="payment.jsp" <i class="fa fa-shopping-cart fa_custom fa-2x"></i></a> </li>
                            <li class ="nav-item">
                                <div class="dropdown">
                                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <img src="./images/profile.png" alt="profile" width="30" height="30">
                                        <span class="username" >Guest </span>
                                        <i class="chevron-down" aria-hidden="true"></i>
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
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>

        </div>
    </div>
    <!-- end of navigation bar section  --> 
    <br>

    <!-- Background banner -->
    <div
        id="intro-example"
        class="p-5 text-center bg-image"
        >

        <div class="d-flex justify-content-center align-items-center h-100">
            <div class="text-white">
                <h1 class="mb-3">TAGREST </h1>
                <br> <br>
                <h5 class="mb-4">Enjoy Your Shopping Experience</h5>
            </div>
        </div>
    </div>
    <br>
    <br>
    <!-- end of Background banner -->


    <section class="Blog" id="Blog">

        <div class="content">

            <div class="card">
                <div class="image">
                    <img src="images/unisexmoroccanjackets1.jpeg"/>
                </div>
                <div class="Blog-Info">
                    <p class="Blog-title">Moroccan vintage jacket</p>
                    <strong class="Blog-Subtitle">
                        <a href="payment.jsp" class="More-details">Add to cart</a>
                        <a class="pr"> 500 SAR </a>
                    </strong>
                </div>
            </div>
            <div class="card">
                <div class="image">
                    <img src="images/unisexmoroccanjackets2.jpeg"/>
                </div>
                <div class="Blog-Info">
                    <p class="Blog-title">Traditional Moroccan Jacket</p>
                    <strong class="Blog-Subtitle">
                        <a href="payment.jsp" class="More-details">Add to cart</a>
                        <a class="pr"> 500 SAR </a>
                    </strong>
                </div>
            </div>
            <div class="card">
                <div class="image">
                    <img src="images/unisexmoroccanjackets3.jpeg"/>
                </div>
                <div class="Blog-Info">
                    <p class="Blog-title">Moroccan bohemian style Jacket</p>
                    <strong class="Blog-Subtitle">
                        <a href="payment.jsp" class="More-details">Add to cart</a>
                        <a class="pr"> 500 SAR </a>
                    </strong>
                </div>
            </div>

        </div>

    </section>
    <!-- end of our product section-->
    <br><br><br><br>

    <!-- copyright section -->

    <section class="footer">
        <footer class="text-center text-white">
            <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                <img src="images/socialmedia.png" width="80" height="50" alt="socialmedia"/>
                <br>
                © 2022 Copyright:
                <a class="text-dark"> Design by Doaa , Jana , Razan , and Renad</a>
            </div>
            <!-- Copyright -->
        </footer>
    </section>
    <!-- end of copyright section -->
        <%
                user.close();
            } else {
                   response.sendRedirect("UnauthorizedPage.jsp");

            }
        %>
</body>
</html>