<%-- 
    Document   : CkeckOut
    Created on : Oct 28, 2022, 7:29:02 AM
    Author     : renad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/CPIT-455project/stylesheetPayment.css"> <!-- multistep form -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- Favicon-->
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>

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
                                <a class="navbar-brand" href="#">Tagrest</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Home</a>
                            </li>

                        </ul>

                    </div>
                </nav>
            </div>
        </div>
         <div class="align-top">
            <h5 class="fw-bold mb-4" style="position: absolute; bottom: 9;">
                <a href="payment.jsp"><i class="fas fa-long-arrow-alt-left me-2"></i>Back to shopping cart</a>
            </h5>
        </div>
        <br>
        <hr class="mb-9" style="height: 2px; background-color: rgb(108, 90, 181); opacity: 1;">

        <div class="col-lg-6 px-5 py-4">

            <h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">Payment</h3>
            <form class="mb-5">

                <div class="form-outline mb-5">
                    <label class="form-label" for="typeText">Card Number</label>
                    <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                           placeholder="1234 5678 9012 3456" minlength="19" maxlength="19" />

                </div>

                <div class="form-outline mb-5">
                    <label class="form-label" for="typeName">Name on card</label>
                    <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
                           placeholder="Renad G.SAAD" />

                </div>

                <div class="row">
                    <div class="col-md-6 mb-5">
                        <div class="form-outline">
                            <label class="form-label" for="typeExp">Expiration</label>
                            <input type="text" id="typeExp" class="form-control form-control-lg" placeholder="01/22"
                                   size="7" id="exp" minlength="7" maxlength="7" />

                        </div>
                    </div>
                    <div class="col-md-6 mb-5">
                        <div class="form-outline">
                            <label class="form-label" for="typeText">Cvv</label>
                            <input type="password" id="typeText" class="form-control form-control-lg"
                                   placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" />

                        </div>
                    </div>
                </div>
                <a href="SeccessfullyPayment.jsp"> <button type="button" class="btn btn-primary btn-block btn-lg" style= "background-color: #8b67ce">CHECKOUT</button></a>
            </form>
        </div>
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
    </body>
</html>