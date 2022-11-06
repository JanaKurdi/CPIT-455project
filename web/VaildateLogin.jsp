<%-- 
    Document   : VaildateLogin
    Created on : Oct 28, 2022, 12:54:13 AM
    Author     : Razan Alshaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Tagrest website</title>
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- Fav icon-->
        <link rel="icon" type="image/x-icon" href="./images/Tagrest.jpg" />
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String pass = request.getParameter("password");
            if (username != null && username.length() > 3 && username.matches("^[a-zA-Z]+$")) {
                if (pass != null && pass.length() >= 5) {
                    DB.Database_connection user1 = new DB.Database_connection();
                    String role = user1.CheckISAuthourizedCustomer(username, pass);
                    role = user1.CheckISAuthourizedAdmin(username, pass);
                    if (role != null) {
                        if (role.equalsIgnoreCase("customer")) {
                            session.setAttribute("userCustomer", username);
                            session.setAttribute("pass", pass);
                            response.sendRedirect("Shop.jsp");
                        }
                        if (role.equalsIgnoreCase("admin")) {
                        session.setAttribute("userAdmin", username);
                        session.setAttribute("pass", pass);
                            response.sendRedirect("AdminPage1.jsp");
                        }
                    } else {
                        //page for redirect
                        response.sendRedirect("UnauthorizedPage.jsp");
                    }
                } else {
                    //page for redirect
                    response.sendRedirect("WrongEntry.jsp");
                }
            } else {
                response.sendRedirect("Login.jsp");
            }
        %>
    </body>
</html>