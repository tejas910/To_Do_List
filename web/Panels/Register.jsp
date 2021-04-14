<%-- 
    Document   : LoginPage
    Created on : 27 Mar, 2021, 1:52:22 PM
    Author     : tppat
--%>
<%response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: sans-serif;
                background: linear-gradient(to right, #b92b27, #1565c0)
            }

            .box {
                width: 500px;
                padding: 40px;
                position: absolute;
                top: 50%;
                left: 50%;
                background: #191919;
                text-align: center;
                transition: 0.25s;
                margin-top: 30px;
                border-radius: 30px;

            }

            .box input[type="text"],
            .box input[type="password"],
            .box input[type="number"]{
                border: 0;
                background: none;
                display: block;
                margin: 20px auto;
                text-align: center;
                border: 2px solid #3498db;
                padding: 10px 10px;
                width: 250px;
                outline: none;
                color: white;
                border-radius: 24px;
                transition: 0.25s
            }

            .box h1 {
                color: white;
                text-transform: uppercase;
                font-weight: 500
            }

            .box input[type="text"]:focus,
            .box input[type="password"]:focus {
                width: 300px;
                border-color: #2ecc71
            }

            .box input[type="submit"] {
                border: 0;
                background: none;
                display: block;
                margin: 20px auto;
                text-align: center;
                border: 2px solid #2ecc71;
                padding: 14px 40px;
                outline: none;
                color: white;
                border-radius: 24px;
                transition: 0.25s;
                cursor: pointer
            }

            .box input[type="submit"]:hover {
                background: #2ecc71
            }

        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <form action="../Controller/RegisterUser.jsp" method="POST" class="box">
                            <h1>Registration</h1>
                            <p class="text-muted" style="text-transform: capitalize;"> Please enter your Details</p>
                           
                            <input type="text"  placeholder="Name" name="name">
                            <input type="text" placeholder="Username" name="uname"> 
                            <input type="password" placeholder="Password" name="pass">
                            <input type="text"  placeholder="Contact No" name="contact">
                            <input type="text" placeholder="Email" name="email">
                            <input type="submit"  value="Register" href="#">
                        </form>
                    </div>
                </div>
            </div>
        </div>
 
    </body>
</html>
