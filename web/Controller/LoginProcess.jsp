<%-- 
    Document   : LoginProcess
    Created on : 28 Mar, 2021, 2:01:14 PM
    Author     : tppat
--%>
<%response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");%>
<%@page import="mainController.UserCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Process</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String pass  =  request.getParameter("password");
            if(UserCon.loginUser(username, pass)) 
            {
                session.setAttribute("username", username);
                session.setAttribute("user", "user");
                response.sendRedirect("../Panels/MainPanel.jsp");
                //login successful hence moved to admin panel
            }
            else
            {
                session.setAttribute("username", null);
                session.setAttribute("user", null);  
                response.sendRedirect("../Error.jsp");
                //login unsuccessful hence moved to adminLoginForm
            }
        %>
    </body>
</html>
