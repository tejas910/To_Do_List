<%-- 
    Document   : EditNote
    Created on : 13 Apr, 2021, 3:31:52 PM
    Author     : tppat
--%>

<%@page import="java.util.List"%>
<%@page import="bean.Note"%>
<%@page import="mainController.UserCon"%>
<%-- 
    Document   : MainPanel
    Created on : 28 Mar, 2021, 2:06:44 PM
    Author     : tppat
--%>
<%@page import="java.util.Date"%>
<%response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Panel</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <style>

            *{
                margin: 0;
                padding: 0;
                list-style: none;
                text-decoration: none;
                font-family: Arial, Helvetica, sans-serif; 

            }
            nav{
                height: 80px;
                background: #2c3e50;
            }
            #navhead{
                width: 150px;
                position: absolute;
                top:0px;
                left: 8%;
                color: white;
                font-family: Arial, Helvetica, sans-serif;
            }
            nav ul{
                float: right;
                margin-right: 25px;

            }
            nav ul li{
                display: inline-block;
                line-height: 80px;
                margin: 0 15px;

            }
            nav ul li a{
                position: relative;
                color: white;
                font-size: 18px;
                padding: 5px 0;
                text-transform: uppercase;
            }
            nav ul li a:before{
                position: absolute;
                content: '';
                left: 0;
                bottom: 0;
                height: 3px;
                width: 100%;
                background: white;
                transform: scaleX(0);
                transform-origin: right;
                transition: transform .4s linear;
                color: white;
            }
            nav ul li a:hover:before{
                transform: scaleX(1);
                transform-origin: left;
                color: white;
            }
            .form{
                border: 1px solid black;
                border-radius: 30px;
                margin: 50px;
                padding: 50px;
            }
        </style>
    <body>
        <%!
            String name;
        %>
        <%
            name = ((String) session.getAttribute("username"));
            try {
                if (!name.equals(null)) {
                    //response.sendRedirect("hodLoginForm.jsp");
//                  List<Hod_data> details = HodCon.getHodData(name);
//                  for(Hod_data Details:details){
//                      Details.getFname();
//
//                  }

        %>
        <nav>

            <ul>
                <li><a href="MainPanel.jsp" >Home</a></li>
                <li><a href="../Panels/ShowNote.jsp">Show Note</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>

        </nav>
        <%!
            int id;
        %>
        <%    id = Integer.parseInt(request.getParameter("edit"));
            List<Note> list = UserCon.getNoteById(id);
            for (Note li : list) {
        %>
        <div class="container">
            <h2 style="margin-top: 50px; margin-left: 50px;">Notes Taker</h2>
            <form action="../Controller/EditController.jsp" class="form" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="email" placeholder="Enter title" name="title" required="" value="<%=li.getTitle()%>">
                </div>
                <div class="form-group">
                    <label for="note">Enter Note</label>
                    <textarea type="text" class="form-control" id="pwd" placeholder="Enter Your Note" name="note"  required=""  ><%=li.getNote()%></textarea>
                </div>
                <% Date d = new Date();%>
                <input type="text" name="date" value="<%=d.toString()%>" hidden="">
                <input type="text" name="uname" value="<%=name%>" hidden="">
                <input type="text" name="id" value="<%=id%>" hidden="">

                <button type="submit" class="btn btn-success " id="save">Save</button>
            </form>
        </div>


        <%   }
                }
            } catch (Exception e) {
                response.sendRedirect("../Panels/LoginPage.jsp");
            }
        %>

    </body>
</html>
