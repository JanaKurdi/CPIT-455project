<%-- 
    Document   : ValidateSignup
    Created on : Oct 30, 2022, 6:48:24 PM
    Author     : Jana
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
    </head>
    <body>
        <%      
            try {
                DB.Database_connection user1 = new DB.Database_connection();
                String FirstName = request.getParameter("Fname");
                String LastName = request.getParameter("lname");
                String username = request.getParameter("username");
                String Address = request.getParameter("Address");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String confPassword = request.getParameter("re-password");
                String phone = request.getParameter("phone");
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                if (FirstName != null && FirstName.length() > 2 && FirstName.matches("^[a-zA-Z]+$")) {
                    if (LastName != null && LastName.length() > 2 && LastName.matches("^[a-zA-Z]+$")) {
                        if (username != null && username.length() > 3 && username.matches("^[a-zA-Z]+$")) {
                            if (email != null && email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {
                                if (password != null && password.length() >= 5) {
                                    if (confPassword.matches(password)) {
                                        if (phone != null && phone.length() == 10 && phone.matches("(05)?[0,3,4,5,6,9][0-9]{7}")) {
                                            int result = user1.InsertUser(FirstName, LastName, username, email, phone, Address, password);
                                            if (result == 1) {
                                                response.sendRedirect("SignUpConfirmation.jsp");
                                            } else {
                                                response.sendRedirect("FailedInsertionToDB.jsp");
                                            }

                                        } else {
                                            response.sendRedirect("FailedSignup.jsp");

                                        }
                                    } else {
                                        response.sendRedirect("FailedSignup.jsp");

                                    }

                                } else {
                                    response.sendRedirect("FailedSignup.jsp");

                                }

                            } else {
                                response.sendRedirect("FailedSignup.jsp");

                            }
                        } else {
                            response.sendRedirect("FailedSignup.jsp");

                        }
                    } else {
                        response.sendRedirect("FailedSignup.jsp");

                    }
                } else {
                    response.sendRedirect("FailedSignup.jsp");

                }
            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %>
    </body>
</html>

