<%-- 
    Document   : Sign up
    Created on : Oct 24, 2022, 6:51:04 PM
    Author     : renad
--%>

<link href='https://fonts.googleapis.com/css?family=Montserrat:700' rel='stylesheet' type='text/css'>
<link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" />
<link rel="stylesheet" href="/CPIT-455project/stylesheetSignUp.css"> <!-- multistep form -->
<script src="js/SignUpjavascript.js"></script><!-- comment -->
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
<main>
    <figure>
        <picture>
            <img src="images/signup.jpg"/>
        </picture>
    </figure>
    <div class="headline">
        <h2 class="text-headline">LOGIN</h2>
    </div>
    <form name="Login_Form" action="Shop.jsp" method="POST">
        <br><br>
        <span>
            <label for="email" class="text-small-uppercase"></label>
            <input class="text-body" id="email" name="email" type="email" placeholder="Enter Your Email">
        </span>
        <br><br><br><br><br>
            <span>
            <label for="password" class="text-small-uppercase"></label>
            <input class="text-body" id="password" name="password" type="password" placeholder="Enter Your Password">
        </span>
  
        <input class="text-small-uppercase" id="submit" type="submit" value="LOGIN">
    </form>
</main>
