<%-- 
    Document   : Login
    Created on : Oct 25, 2022, 5:43:41 PM
    Author     : DoaaSalem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Fav icon-->
<link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" />
<link rel="stylesheet" href="/CPIT-455project/stylesheetLogin.css"> <!-- multistep form -->
<title>Tagrest website</title>

<form id="msform">
    <fieldset>
        <h2 class="fs-title">Welcome Back</h2>
        <h3 class="fs-subtitle">Login</h3>
        <input type="text" name="username" placeholder="Username" />
        <input type="password" name="password" placeholder="Password" />
        <input type="button" name="sumbit" class="sumbit action-button" value="Login" />
        
    </fieldset>

</form>