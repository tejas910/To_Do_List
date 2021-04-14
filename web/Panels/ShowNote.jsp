<%-- 
    Document   : ShowNote
    Created on : 13 Apr, 2021, 11:24:05 AM
    Author     : tppat
--%>
<%response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");%>
<%@page import="java.util.List"%>
<%@page import="bean.Note"%>
<%@page import="mainController.UserCon"%>`
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Notes</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">  
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>       
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>       
        <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>   
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
    </head>
    <body>
        <nav>

            <ul>
                <li><a href="MainPanel.jsp" >Home</a></li>
                <li><a href="../Panels/ShowNote.jsp">Show Note</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>

        </nav>
        <br>
        <br>
        <table id="table" class="table table-dark table-bordered" style="width:100%">
            <thead>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Note</th>
                    <th scope="col">Date</th>
                    <th scope="col">Action</th>


                </tr>
            </thead>
            <%
                String uname = (String) session.getAttribute("username");
                try {
                    if (!uname.equals(null)) {
                        List<Note> li = UserCon.getNote(uname);
                        for (Note list : li) {


            %>
            <tr>
                <td><%=list.getTitle()%></td>
                <td><%=list.getNote()%></td>
                <td><%=list.getDate()%></td>
                <td>
                    <a class="btn btn-success" href="../Panels/EditNote.jsp?edit=<%=list.getId()%>">Edit</a>
                    <a class="btn btn-danger" href="../Controller/DeleteNote.jsp?delete=<%=list.getId()%>">Delete</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>

        <%                }
            } catch (Exception e) {
                response.sendRedirect("../Panels/LoginPage.jsp");
            }
        %>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#table').DataTable();
            });
        </script>
    </body>
</html>
