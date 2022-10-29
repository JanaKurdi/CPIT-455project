<%-- 
    Document   : Shop
    Created on : Oct 27, 2022, 3:53:43 PM
    Author     : duaas
--%>

<!DOCTYPE html>
<html lang="en"> <!--english language-->
    <html>
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
            <link rel="stylesheet" href="stylesheetShop.css" type="text/css"/>
            <link rel="stylesheet" href="css/bootstrap.css" type="text/css"/>
            <link rel="stylesheet" href="css/bootstrap.css" type="text/css"/>
            <link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css"/>
            <link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css"/>
            <link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css"/>
                      
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


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
                                    <a class="navbar-brand" href="#">Tagrest</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="ContactUs.jsp">Contact us</a>
                                </li>
                            </ul>
                            <form class="d-flex" role="search">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn btn-light" type="submit">Search</button>
                            </form>
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
                        <h1 class="mb-3">TAGREST </h1>
                        <h5 class="mb-4">New Clothes, New Passion</h5>
                    </div>
                </div>
            </div>
            <br>
            <br>
            <!-- end of Background banner -->

            <div class="content">
                 
	<li class="item">
				
            <div><img src="./images/unisexmoroccanjackets1.jpeg" alt="">
				<p class="item-description">This is an item description. Interesting content about the item will go here.</p>
				<h4 class="item-name">Item Name</h4>
                                <h5 class="item-price">$<span class="price">50.00</span></h5> </div>
                                
                                <button type="button" class="btn btn-outline-primary">Add to cart</button>
			</li>
                        	<li class="item">
				
				 <div><img src="./images/unisexmoroccanjackets2.jpeg" alt="">
				<p class="item-description">This is an item description. Interesting content about the item will go here.</p>
				<h4 class="item-name">Item Name</h4>
				<h5 class="item-price">$<span class="price">50.00</span></h5></div>
                                
                                <button type="button" class="btn btn-outline-primary">Add to cart</button>
			</li>
                        	<li class="item">
				
				 <div><img src="./images/unisexmoroccanjackets3.jpeg" alt="">
				<p class="item-description">This is an item description. Interesting content about the item will go here.</p>
				<h4 class="item-name">Item Name</h4>
				<h5 class="item-price">$<span class="price">50.00</span></h5></div>
                                
                                <button type="button" class="btn btn-outline-primary">Add to cart</button>
                                </li>
            </div>
            <!-- end of our product section-->
            <br><br><br><br>

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