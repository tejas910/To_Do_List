<%-- 
    Document   : EditController
    Created on : 13 Apr, 2021, 3:44:09 PM
    Author     : tppat
--%>

<%@page import="mainController.UserCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Controller</title>
    </head>
    <body>
         <%
            int id = Integer.parseInt(request.getParameter("id"));
            String username = request.getParameter("uname");
            String title = request.getParameter("title");
            String note = request.getParameter("note");
            String date = request.getParameter("date");
            boolean result;
            result = UserCon.addNote(username, title, note, date, id);
            if(result){
                response.sendRedirect("../Panels/MainPanel.jsp?flag=true");
            }
        
        %>
    </body>
</html>
