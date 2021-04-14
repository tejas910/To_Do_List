<%-- 
    Document   : Logout
    Created on : 28 Mar, 2021, 2:39:11 PM
    Author     : tppat
--%>
<%response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
        
                try{if(session.getAttribute("user").equals("user"))
            {
            session.removeAttribute("user");
            session.removeAttribute("username"); 
            }}catch(Exception e){}
             response.sendRedirect("../Panels/LoginPage.jsp");
    
        %>
    </body>
</html>
