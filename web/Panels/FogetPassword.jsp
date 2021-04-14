<%-- 
    Document   : LoginPage
    Created on : 27 Mar, 2021, 1:52:22 PM
    Author     : tppat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
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
                margin-top: 100px;
                border-radius: 30px;

            }

            .box input[type="text"],
            .box input[type="password"] {
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
                        <form action="" method="" class="box">
                            <h1>Forget Password</h1>
                            <p class="text-muted" style="text-transform: capitalize;"> Please enter new password</p>
                            <input type="text"  placeholder="Name" name="name">
                            <input type="password" placeholder="New Password" name="newpass"> 
                            <input type="submit"  value="Submit" href="#">
                        </form>
                    </div>
                </div>
            </div>
        </div>
 
    </body>
</html>
