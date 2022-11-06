<%-- 
    Document   : ContactUs
    Created on : Oct 26, 2022, 6:34:38 PM
    Author     : mac
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> <!--english language-->

    <head>   
        <!-- basic -->
        <!-- basic -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- Fav icon-->
        <link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="stylesheetHome.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Tagrest website</title>

    </head>
    <body>
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
                                <a class="nav-link" href="Shop.jsp">Shop</a>
                            </li>
                        </ul>

                    </div>
                </nav>
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
                    <h1 class="mb-3">WELCOME TO TAGREST</h1>
                    <h5 class="mb-4">Buy New Clothes, Get New Passion</h5>

                </div>
            </div>
        </div>

        <!-- end of Background banner -->




        <!-- Contact us Section -->
        <div style="height: 100px;"></div>
        <div class="container">
            <div class="row">
                <div class="col-12 text-center"> 
                    <hr id="hr">
                </div>
            </div>


            <section class="mb-4 ">
                <div class="contact-section">
                    <!--Section heading-->
                    <h1 class="h1-responsive font-weight-bold  my-4">Contact us</h1>
                    <!--Section description-->
                    <p class=" w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within
                        a matter of hours to help you.</p>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label for="exampleInputName2">Name</label>
                                    <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail2">Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
                                </div>
                                <div class="form-group align-content-lg-center">
                                    <label for="exampleInputText">Your Message</label>
                                    <textarea  class="form-control" placeholder="Description"></textarea> 
                                </div>
                                <button type="submit" class="btn btn btn-light btn-lg m-2">Send Message</button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!--end of Contact us Section-->

        <br>

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
    </body>
</html>
