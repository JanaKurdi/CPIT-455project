<%-- 
    Document   : Signup
    Created on : Oct 24, 2022, 6:51:04 PM
    Author     : renad
--%>
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
<link href="css/index-styles.css" rel="stylesheet" />

<html><!-- comment --><body>
        <input type="hidden" id="status"
               value="<%=request.getAttribute("status")%>"><!-- comment -->
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
        <!-- java script-->
          <script src="js/sweetalert.main.js"></script>
            <script src="js/sweetalert.js"></script>
           <link rel="stylesheet" href="js/sweetalert.css">

        <script>
            var status = document.getElementById("status").value;
            if (status === "invalidUsername") {
                swal({
                    title: "Error!",
                    text: "username must be only characters",
                    imageUrl: '.images/UnvalidData.png'
                });
            }
            if (status === "invalidPhone") {
                swal({
                    title: "Error!",
                    text: "phone number must be 10 digits and starts with (050 , 053 , 054 , 055 , 056 , 059)",
                    imageUrl: '.images/UnvalidData.png'
                });
                //  swal("Sorry", "", "error");
            }
            if (status === "invalidPassword") {
                swal({
                    title: "Error!",
                    text: "Your password too weak",
                    imageUrl: '.images/UnvalidData.png'
                });
            }
            if (status === "ivalidFLname") {
                swal({
                    title: "Error!",
                    text: "please enter only letters",
                    imageUrl: '.images/UnvalidData.png'
                });
            }
            if (status === "invalidEmail") {
                swal({
                    title: "Error!",
                    text: "Please enter email correctly",
                    imageUrl: '.images/UnvalidData.png'
                });
            }
            if (status === "NotIdentical") {
                swal({
                    title: "Error!",
                    text: "password and password confirmation not identical!"",
                            imageUrl: '.images/UnvalidData.png'
                });

            }
            if (status === "AllInvalid") {
                 swal({
                    title: "Error!",
                    text: "please enter signup information correctly!"",
                            imageUrl: '.images/UnvalidData.png'
                });
            
            }
            if (status === "invalidInsert") {
                swal({
                    title: "Sorry",
                    text: "Something went wrong please try again!",
                            imageUrl: '.images/UnvalidData.png'
                });
            }
        </script><!-- comment -->
    </body>
</html>