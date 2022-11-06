<%-- 
    Document   : payment
    Created on : Oct 27, 2022, 3:59:05 AM
    Author     : renad
--%>


<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/CPIT-455project/stylesheetPayment.css"> <!-- multistep form -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- Favicon-->
<title>Tagrest website</title>
<link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" />
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
      rel="stylesheet" type="text/css" />
<link
    href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
    rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
<link rel="stylesheet" href="stylesheetProfile.css" type="text/css"/>



<html> 
    <body>
        <% if (session.getAttribute("userCustomer") != null) {
                DB.Database_connection user = new DB.Database_connection();
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
                                <a class="nav-link" href="index.html">Home</a>
                            </li>
                        </ul>

                    </div>
                </nav>
            </div>
        </div>
        <section class="h-100 h-custom" style="background:linear-gradient(#1f75c1,#aed4f5);">
            <div class="container h-100 py-5">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card shopping-cart" style="border-radius: 15px;">
                            <div class="card-body text-black">
                                <div class="leftbox">
                                    <a href="Shop.jsp" class="rounded-circle">
                                        <img src="./images/previous.png" alt="backbutton" width="30" height="30">
                                    </a>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 px-5 py-4">

                                        <h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">Your order</h3>

                                        <div class="d-flex align-items-center mb-5">
                                            <div class="flex-shrink-0">
                                                <img src="images/unisexmoroccanjackets1.jpeg"
                                                     class="img-fluid" style="width: 150px;" alt="morrocan jacket image">
                                            </div>
                                            <div class="flex-grow-1 ms-3">
                                                <a href="#!" class="float-end text-black"><i class="fas fa-times"></i></a>
                                                <h5 class="text-primary">jacket </h5>
                                                <h6 style="color: #9e9e9e;">Color: white</h6>
                                                <div class="d-flex align-items-center">
                                                    <p class="fw-bold mb-0 me-5 pe-3">500 SR</p>
                                                    <div class="def-number-input number-input safari_only">
                                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                                class="minus"></button>
                                                        <input class="quantity fw-bold text-black" min="0" name="quantity" value="1"
                                                               type="number">
                                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                                class="plus"></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center mb-5">
                                            <div class="flex-shrink-0">
                                                <img src="images/unisexmoroccanjackets2.jpeg"
                                                     class="img-fluid" style="width: 150px;" alt="Generic placeholder image">
                                            </div>
                                            <div class="flex-grow-1 ms-3">
                                                <a href="#!" class="float-end text-black"><i class="fas fa-times"></i></a>
                                                <h5 class="text-primary">jacket</h5>
                                                <h6 style="color: #9e9e9e;">Color: Red</h6>
                                                <div class="d-flex align-items-center">
                                                    <p class="fw-bold mb-0 me-5 pe-3">500 SR</p>
                                                    <div class="def-number-input number-input safari_only">
                                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                                class="minus"></button>
                                                        <input class="quantity fw-bold text-black" min="0" name="quantity" value="1"
                                                               type="number">
                                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                                class="plus"></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center mb-5">
                                            <div class="flex-shrink-0">
                                                <img src="images/unisexmoroccanjackets3.jpeg"
                                                     class="img-fluid" style="width: 150px;" alt="Generic placeholder image">
                                            </div>
                                            <div class="flex-grow-1 ms-3">
                                                <a href="#!" class="float-end text-black"><i class="fas fa-times"></i></a>
                                                <h5 class="text-primary">jacket</h5>
                                                <h6 style="color: #9e9e9e;">Color: rose pink</h6>
                                                <div class="d-flex align-items-center">
                                                    <p class="fw-bold mb-0 me-5 pe-3">500 SR</p>
                                                    <div class="def-number-input number-input safari_only">
                                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                                class="minus"></button>
                                                        <input class="quantity fw-bold text-black" min="0" name="quantity" value="2"
                                                               type="number">
                                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                                class="plus"></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <hr class="mb-4" style="height: 2px; background-color: rgb(108, 90, 181); opacity: 1;">

                                        <div class="d-flex justify-content-between px-x">
                                            <p class="fw-bold">VAT</p>
                                            <p class="fw-bold">45 SR</p>
                                        </div>
                                        <div class="d-flex justify-content-between p-2 mb-2" style="background-color:#fbfbfb ">
                                            <h5 class="fw-bold mb-0">Total:</h5>
                                            <h5 class="fw-bold mb-0">1545 SR</h5>
                                        </div>

                                    </div>
                                    <div class="col-lg-6 px-5 py-4">

                                        <h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">BILLING DETAILS</h3>

                                        <form class="mb-5">

                                            <div class="col-md-6 mb-5">
                                                <label class="form-label" for="typeText">FIRST NAME</label>
                                                <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                                                       placeholder="" minlength="19" maxlength="19" />

                                            </div>
                                            <div class="col-md-6 mb-5">
                                                <label class="form-label" for="typeText">LAST NAME</label>
                                                <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                                                       placeholder="" minlength="19" maxlength="19" />

                                            </div>
                                            <div class="form-outline mb-5">
                                                <label class="form-label" for="typeName">COUNTRY</label>
                                                <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
                                                       placeholder="SAUDI ARABIA" />

                                            </div>

                                            <div class="row">
                                                <div class="form-outline mb-5">
                                                    <div class="form-outline">
                                                        <label class="form-label" for="typeExp">STREET ADDRESS</label>
                                                        <input type="text" id="typeExp" class="form-control form-control-lg" placeholder="Home number and Sreet name"
                                                               size="7" id="exp" minlength="7" maxlength="7" />

                                                    </div>
                                                </div>

                                                <div class="form-outline mb-5">
                                                    <label class="form-label" for="typeText">TOWN/CITY</label>
                                                    <input type="password" id="typeText" class="form-control form-control-lg"
                                                           placeholder="" size="1" minlength="3" maxlength="3" />

                                                </div>
                                                <div class="form-outline mb-5">
                                                    <div class="form-outline">
                                                        <label class="form-label" for="typeText">PHONE NUMBER(WHATSAPP)</label>
                                                        <input type="password" id="typeText" class="form-control form-control-lg"
                                                               placeholder="" size="1" minlength="3" maxlength="3" />

                                                    </div>
                                                </div>

                                                <div class="form-outline mb-5">
                                                    <div class="form-outline">
                                                        <label class="form-label" for="typeText">PHONE NUMBER(WHATSAPP)CONFIRMATION</label>
                                                        <input type="password" id="typeText" class="form-control form-control-lg"
                                                               placeholder="" size="1" minlength="3" maxlength="3" />

                                                    </div>
                                                </div>
                                                <div class="form-outline mb-5">
                                                    <div class="form-outline">
                                                        <label class="form-label" for="typeText">EMAIL ADDRESS</label>
                                                        <input type="password" id="typeText" class="form-control form-control-lg"
                                                               placeholder="" size="1" minlength="3" maxlength="3" />

                                                    </div>
                                                </div>
                                            </div>

                                            <a href="CkeckOut.jsp"> <button type="button" class="btn btn-primary btn-block btn-lg" style= "background-color: #8b67ce">PLACE ORDER</button></a>

                                        </form>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <br>            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br><br>
            <br><br>
            <br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br>


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
        </section>
        <%
                user.close();
            } else {
                response.sendRedirect("UnauthorizedPage.jsp");

            }
        %>
    </body>
</html>
