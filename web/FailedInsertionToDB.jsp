<%-- 
    Document   : FailedInsertionToDB
    Created on : Nov 6, 2022, 6:06:44 PM
    Author     : renad
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
       
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
       <title>Tagrest website</title>
        <link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" /> 
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
        crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
              rel="stylesheet" type="text/css" />
        <link  href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/index-styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="stylesheetProfile.css" type="text/css"/>

        <style type="text/css">

            @media screen {
                @font-face {
                    font-family: 'Source Sans Pro';
                    font-style: normal;
                    font-weight: 400;
                    src: local('Source Sans Pro Regular'), local('SourceSansPro-Regular'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/ODelI1aHBYDBqgeIAH2zlBM0YzuT7MdOe03otPbuUS0.woff) format('woff');
                }
                @font-face {
                    font-family: 'Source Sans Pro';
                    font-style: normal;
                    font-weight: 700;
                    src: local('Source Sans Pro Bold'), local('SourceSansPro-Bold'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/toadOcfmlt9b38dHJxOBGFkQc6VGVFSmCnC_l7QZG60.woff) format('woff');
                }
            }

            body,
            table,
            td,
            a {
                -ms-text-size-adjust: 100%; /* 1 */
                -webkit-text-size-adjust: 100%; /* 2 */
            }

            table,
            td {
                mso-table-rspace: 0pt;
                mso-table-lspace: 0pt;
            }

            img {
                -ms-interpolation-mode: bicubic;
            }

            a[x-apple-data-detectors] {
                font-family: inherit !important;
                font-size: inherit !important;
                font-weight: inherit !important;
                line-height: inherit !important;
                color: inherit !important;
                text-decoration: none !important;
            }

            div[style*="margin: 16px 0;"] {
                margin: 0 !important;
            }
            body {
                width: 100% !important;
                height: 100% !important;
                padding: 0 !important;
                margin: 0 !important;
            }

            table {
                border-collapse: collapse !important;
            }
            a {
                color: #ffffff;
            }
            img {
                height: auto;
                line-height: 100%;
                text-decoration: none;
                border: 0;
                outline: none;
            }
        </style>
   </head>
     <body style="background-color: #ffffff;">

        <!-- start body -->
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
            <br>
         </table>

                <!-- start body -->
                <table border="0" cellpadding="0" cellspacing="0" width="100%">

                    <!-- start logo -->
                    <tr>
                        <td align="center" bgcolor="#ffffff">

                            <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
                                <tr>
                                    <td align="center" valign="top" style="padding: 36px 24px;">
                                        <a target="_blank" style="display: inline-block;">
                                            <img src="images/UnvaildData.png" alt="Logo" border="0" width="48" style="display: block; width: 200px; max-width: 200px; min-width: 200px;">
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <!-- end logo -->

                    <!-- start hero -->
                    <tr>
                        <td align="center" bgcolor="#ffffff">

                            <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
                                <tr>
                                    <td align="center" bgcolor="#ffffff" style="padding: 36px 24px 0; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; border-top: 3px solid #d4dadf;">
                                        <h1 style="margin: 0; font-size: 32px; font-weight: 700; letter-spacing: -1px; line-height: 48px;">Account exists </h1>
                                        <h4>oops! our records show you already have an account</h4>
                                        <h4>Please Login</h4>
                                        
                                    </td>
                                </tr>
                            </table>

                        </td>
                    </tr>
                    <!-- end hero -->

                    <!-- start copy block -->
                    <tr>
                        <td align="center" bgcolor="#ffffff">

                            <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">

                                <!-- start button -->
                                <tr>
                                    <td align="left" bgcolor="#ffffff">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td align="center" bgcolor="#ffffff" style="padding: 12px;">
                                                    <table border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td align="center" bgcolor="#1a82e2" style="border-radius: 6px;">
                                                                <a href="Login.jsp" target="_blank" style="display: inline-block; padding: 16px 36px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #48ca5f; text-decoration: none; border-radius: 6px;">Login</a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <!-- end button -->
                            </table>

                        </td>
                    </tr>
                    <!-- end copy block -->
                </table>
                <!-- end body -->
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
