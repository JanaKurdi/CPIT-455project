<%-- 
    Document   : ValidateSignup
    Created on : Oct 30, 2022, 6:48:24 PM
    Author     : Jana
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
         String FirstName = request.getParameter("FirstName");
         String LasttName = request.getParameter("LasttName");
         String email = request.getParameter("email");
         String password = request.getParameter("password");
         String confPassword = request.getParameter("confPassword");
         String phone = request.getParameter("phone");

        if (FirstName != null && FirstName.length() > 2 && FirstName.matches("^[a-zA-Z]+$")) {
             if (LasttName != null && LasttName.length() > 2 && LasttName.matches("^[a-zA-Z]+$")) {
                if(email!=null && email.matches("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$")){
                if (password != null && password.length() >= 5) {
                   if(confPassword==password){
                     if(phone!=null && phone.length()==10 && phone.matches("(05)?[0,3,4,5,6,9][0-9]{7}")){
                     Database.Database_connection user1 = new Database.Database_connection();
                     ResultSet result = user1.insertUser(FirstName,LasttName,email,password,phone);
                     if (result.next()) {
                      response.sendRedirect("SignUpConfirmation.jsp");
           }else {
                        out.print(FirstName+" "+ LasttName+ " you enterd wrong entry ");
            }

            }else{
             out.print("hone number must be 10 digits and starts with (050 , 053 , 054 , 055 , 056 , 059)");
             out.print("<a href='Signup.jsp'> Restart </a>"); 
            }
            }else{
             out.print("it is not match your with yor password");
             out.print("<a href='Signup.jsp'> Restart </a>"); 
            }
                   
            }else{
             out.print(" Your password is too weak");
             out.print("<a href='Signup.jsp'> Restart </a>"); 
            }
                  
            }else{
             out.print(" Your email is not correct");
             out.print("<a href='Signup.jsp'> Restart </a>");                    
            }
            }else {
                    out.print(" first name or lastname is not correct");
                    out.print("<a href='Signup.jsp'> Restart </a>");                    
                    }
            }else{
               out.print("Please enter correct data !!");
               out.print("<a href='Signup.jsp'> Restart </a>");                    

            }
     
        %>

    </body>
</html>
