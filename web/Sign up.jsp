<%-- 
    Document   : Sign up
    Created on : Oct 24, 2022, 6:51:04 PM
    Author     : renad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Fav icon-->
        <link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" />
        <link href="css/bootstrap.css"rel="stylesheet"type="text/css">
        <title>JSP Page</title>
        <style>

            *{
                padding: 0;
                margin: 0;
                box-sizing: border-box;

            }
            body{
                background-color: rgb(255,255,255);

            }
        </style>

    </head>
    <body>

        <div class= "container">
            <div calss="row">

                <div class ="col-md-6">
                    <img src="images/signup.jpg" height="400" width="400" alt="Tagrest">
                </div>
            </div>

            <div class=" text-left">
                <script type="text/javascript"scr="js/bootstrap.js"></script>
                <h1>Sign up</h1>
            </div>

            <br>

            <div class=" text-left">
                <input type="text" name="First name" value="" placeholder="Enter your Firstname" />
            </div>
            <br>

            <div class=" text-left">
                <input type="text" name="Last name" value="" placeholder="Enter your Lastname" />
            </div>
            <br>

            <div class=" text-left">
                <input type="text" name="id" value=""placeholder="Enter your national ID" />   
            </div>

            <br>
            <div class=" text-left">
                <input type="text" name="Email" value=""placeholder="Enter your Email" /> 
            </div>
            <br>

            <div class=" text-left">
                <input type="password" name="password" value="" placeholder="Ctreate a password"/> 
            </div>
            <br>

            <div class=" text-left">
                <input type="password" name="re_password" value="" placeholder="Confirm a password"/>   
            </div>
            <br>

            <div class=" text-left">
                <input type="text" name="address" value=""placeholder="Enter your address" />
            </div>
            <br>

            <div class=" text-left">
                <input type="text" name="phonenumber" value=""placeholder="Enter your Phonenumber" /> 
            </div>

            <br>
            <div class=" text-left">
                <div class="checkbox-text">
                    <div class="checkbox-content">
                        <input type="checkbox" id="termCon">
                        <label for="termCon" class="text">I accepted all terms and conditions</label>
                    </div>
                </div>
            </div>
            <br>
            <div class=" text-left">
                <button type="button" class="btn btn-outline-success">SignUp</button>
            </div>
            <div class=" text-left">
                <br>
                <div class="login-signup">
                    <span class="text">Already have account?
                        <a href="#" class="text login-link">Login Now</a>
                    </span>
                </div>
            </div>
        </div>

    </body>
</html>
