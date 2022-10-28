<%-- 
    Document   : Sign up
    Created on : Oct 24, 2022, 6:51:04 PM
    Author     : renad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- multistep form -->
<link rel="stylesheet" href="/CPIT-455project/stylesheetSignUp.css"> <!-- multistep form -->
<script src="js/SignUpjavascript.js"></script><!-- comment -->

<form id="msform">
    <!-- progressbar -->
    <ul id="progressbar">
        <li class="active">Account Setup</li>
        <li>Social Profiles</li>
        <li>Personal Details</li>
    </ul>
    <!-- fieldsets -->
    <fieldset>
        <h2 class="fs-title">Sign Up</h2>
        <h3 class="fs-subtitle">This is step 1</h3>
        <input type="text" name="email" placeholder="Email" />
        <input type="password" name="pass" placeholder="Password" />
        <input type="password" name="cpass" placeholder="Confirm Password" />
        <input type="button" name="next" class="action-button" value="Next" />
    </fieldset>

    <fieldset>
        <h2 class="fs-title">Personal Details</h2>
        <h3 class="fs-subtitle">We will never sell it</h3>
        <input type="text" name="fname" placeholder="First Name" />
        <input type="text" name="lname" placeholder="Last Name" />
        <input type="text" name="id" placeholder="National ID" />
        <input type="text" name="phone" placeholder="Phone" />
        <textarea name="address" placeholder="Address"></textarea>
        <input type="button" name="previous" class="previous action-button" value="Previous" />
        <input type="submit" name="submit" class="submit action-button" value="Submit" />
    </fieldset>
</form>

