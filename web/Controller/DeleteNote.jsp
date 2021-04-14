<%-- 
    Document   : DeleteNote
    Created on : 14 Apr, 2021, 10:40:31 AM
    Author     : tppat
--%>

<%@page import="mainController.UserCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% 
            int id = Integer.parseInt(request.getParameter("delete"));
            boolean state = UserCon.deleteNote(id);
            if(state){
                response.sendRedirect("../Panels/ShowNote.jsp");
            }
        %>
    </body>
</html>
