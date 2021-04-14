<%-- 
    Document   : ProcessData
    Created on : 13 Apr, 2021, 10:48:06 AM
    Author     : tppat
--%>

<%@page import="mainController.UserCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Date Controller</title>
    </head>
    <body>
        <%
            String username = request.getParameter("uname");
            String title = request.getParameter("title");
            String note = request.getParameter("note");
            String date = request.getParameter("date");
            boolean result;
            result = UserCon.addNote(username, title, note, date);
            if(result){
                response.sendRedirect("../Panels/MainPanel.jsp?flag=true");
            }
        
        %>
    </body>
</html>
