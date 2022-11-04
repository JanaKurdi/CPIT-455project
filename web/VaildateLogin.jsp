<%-- 
    Document   : VaildateLogin
    Created on : Oct 28, 2022, 12:54:13 AM
    Author     : Razan Alshaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            String username = request.getParameter("username");
            String pass = request.getParameter("password");
            if (username != null && username.length() > 3 && username.matches("^[a-zA-Z]+$")) {
                if (pass != null && pass.length() >= 5) {
                    Database.Database_connection user1 = new Database.Database_connection();
                    ResultSet result = user1.CheckISAuthourizedCustomer(username, pass);
                    if (result.next()) {
                        out.print("erorr in next");
                        session.setAttribute("user", username);
                        session.setAttribute("pass", pass);
                        String role = result.getString("role");
                        out.println("Role: " + result.getString("role") + "     ");
                        out.println("First Name: " + result.getString("fname") + "     ");
                        out.println("Last Name: " + result.getString("lname") + "     ");
                        if (role.equalsIgnoreCase("customer")) {
                            response.sendRedirect("Shop.jsp");
                        }
                        if (role.equalsIgnoreCase("admin")) {
                            response.sendRedirect("admin.jsp");
                        }
                    } else {
                        out.print(username + " you are not authorized user");
                    }
                } else {
                    out.print(" username or pass not correct");
                    out.print("<a href='homepage.jsp'> Restart </a>");
                }
            } else {
                out.print("Please enter correct data !!");
                out.print("<a href='Login.jsp'> Restart </a>");
            }
        %>
    </body>
</html>
