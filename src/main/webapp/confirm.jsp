<%--
  Created by IntelliJ IDEA.
  User: andrejosadcuk
  Date: 03.08.2022
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <form action="Logout"><input type="submit" value="Logout"></form>
</div>
<div align="right"><a href="ProfilServlet">To my profil</a></div>

<p>
<div align="center"><img src="images/ordernow.PNG" height="60"></div>
<br>

<p style="color:blue;"><h1>Magazine title: </h1></u><h1>${nameConfirm}</h1></p>

<u><h1>Theme: </h1></u>

<h2>${typeConfirm}</h2>

<u><h1>Description: </h1></u>

<h2>${descriptionConfirm}</h2>

<div align="center"><u><h2>Price: </h2></u>

    <h1>${priceConfirm}</h1>

    <a href="ThankYouServlet"><img src="images/v.png" height="50"></a>
</div>

</body>
</html>

