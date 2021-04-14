<%-- 
    Document   : RegisterUser
    Created on : 28 Mar, 2021, 11:10:00 AM
    Author     : tppat
--%>

<%@page import="mainController.UserCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register User</title>
    </head>
    <body>
        <%

            String name = request.getParameter("name");
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            String contact= request.getParameter("contact");
            String email = request.getParameter("email");
            boolean res = UserCon.registerUser(name,uname,pass,contact,email);
            if(res==true){
                response.sendRedirect("../Panels/LoginPage.jsp");
            }
        %>
    </body>
</html>
