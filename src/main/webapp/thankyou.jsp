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
    <style>
        body {
            background-image: url('stile/images/bg-01.jpg');
        }
    </style>
    <title>Title</title>
</head>
<body>

<div align="right">
    <form  action="Logout"><input type="submit" value="Logout"></form>
</div>

<div align="right"><a href="ProfilServlet"> To my profil</a></div>
<div align="left"><a href="PeriodicalServlet"><h2> To catalog</h2></a></div>

<div align="center"><img src="images/thanks.jpeg" height="300"></div>
</body>
</html>
