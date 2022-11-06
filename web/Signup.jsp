<%-- 
    Document   : Signup
    Created on : Oct 24, 2022, 6:51:04 PM
    Author     : renad
--%>
<%@page import="java.sql.*"%>
<link href='https://fonts.googleapis.com/css?family=Montserrat:700' rel='stylesheet' type='text/css'>
<link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" />
<link rel="stylesheet" href="/CPIT-455project/stylesheetSignUp.css"> <!-- multistep form -->
<script src="js/SignUpjavascript.js"></script><!-- comment -->
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

<html>

    <!-- comment --><body>
        <!-- comment -->
        <main>
            <figure>
                <picture>
                    <img src="images/signup.jpg"/>
                </picture>
            </figure>
            <div class="headline">
                <h2 class="text-headline">SIGN UP</h2>
            </div>
            <form name="Sign_Form" action="ValidateSignup.jsp" method="POST">
                <span>
                    <label for="firstname" class="text-small-uppercase"></label>
                    <input class="text-body" id="firstname" name="Fname" type="text" placeholder="    Enter your First name" required="required" >
                </span>
                <span>
                    <label for="lastname" class="text-small-uppercase"></label>
                    <input class="text-body" id="lastname" name="lname" type="text" placeholder="    Enter your Last name"required="required">
                </span>
                <span>
                    <label for="username" class="text-small-uppercase"></label>
                    <input class="text-body" id="lastname" name="username" type="text" placeholder="    Enter your username"required="required">
                </span>

                <span>
                    <label for="Address" class="text-small-uppercase"></label>
                    <input class="text-body" id="Address" name="Address" type="text" placeholder="    Enter your Address"required="required">
                </span>
                <span>
                    <label for="email" class="text-small-uppercase"></label>
                    <input class="text-body" id="email" name="email" type="email" placeholder="    Enter your Email"required="required" >
                </span>
                <span>
                    <label for="password" class="text-small-uppercase"></label>
                    <input class="text-body" id="password" name="password" type="password" placeholder="Enter correct password"required="required">
                </span>
                <span>
                    <label for="re-password" class="text-small-uppercase"></label>
                    <input class="text-body" id="re-password" name="re-password" type="password" placeholder="Cnofirm you password"required="required">
                </span>
                <span>
                    <label for="phone" class="text-small-uppercase"></label>
                    <input class="text-body" id="phone" name="phone" type="text" placeholder="    Enter your Phone Number"required="required">
                </span>
                <span>
                    <input type="submit" name="signup" id="signup" value="Sign up" />
                </span>
            </form>
        </main>

    </body>
</html>