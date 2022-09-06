<%--
  Created by IntelliJ IDEA.
  User: andrejosadcuk
  Date: 03.08.2022
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <style>
        h1{
            background: white;
            color: black;
            padding: 2px;
            display: inline-block;
            border-radius: 10%;
        }
        body {
            background-image: url('stile/images/bg-01.jpg');
        }
    </style>
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="stile/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="stile/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="stile/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="stile/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="stile/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="stile/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="stile/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="stile/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="stile/css/util.css">
    <link rel="stylesheet" type="text/css" href="stile/css/main.css">
</head>
<body>

<div align="center">
    <br>
    <p><h2><font color="red">Error</font></h2></p>
    <br>
    <strong><h1>You put incorrect password or login</h1></strong>
    <br>
    <br><br>
    <p><h1 color="white">TRY AGAIN!</h1></p>
    <hr>




    <div align="center">
    <P><a href="login.jsp">
        <button class="login100-form-btn">
        SIGH IN
        </button>
    </a></P>
    </div>

    <p><h3>or</h3></p>

    <div align="center">
    <P><a href="registration.jsp">
        <button class="login100-form-btn">
        SIGH UP
        </button>
    </a></P>
    </div>

</div>
</body>
</html>
