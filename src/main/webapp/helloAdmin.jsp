<%--
  Created by IntelliJ IDEA.
  User: andrejosadcuk
  Date: 03.08.2022
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tf" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${lang}"/>
<fmt:setBundle basename="messages"/>

<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-image: url("stile/images/bg-01.jpg");
        }
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
<div align="right">
    <form action="Logout"><input type="submit" value="<fmt:message key="periodicalsLogout.logout" />"></form>
</div>

<div align="left">
    <form action="I18Servlet" method="get">
        <select name="lan">
            <option>en</option>
            <option>ua</option>
        </select>
        <input type="submit" name="HelloAdmin" value="<fmt:message key="periodicalsApply.apply" />"/>
    </form>
</div>

<div align="left">
    <p><fmt:message key="helloAdmin.Todayis"/> <tf:tagfileone/></p>
</div>
<h1><center> <fmt:message key="helloAdmin.HiAdmin"/></center></h1>


<div class="container-login100-form-btn m-t-32"
     align="center"
>
    <h1><a href="AdminPeriodicalsServlet">
        <button class="login100-form-btn">
            <fmt:message key="helloAdmin.PerMeneg"/>
        </button>
    </a>
    </h1>
</div>

<div align="center">
    <h1><a href="AdminUsersServlet">
        <button class="login100-form-btn">
            <fmt:message key="helloAdmin.Users"/>
        </button>
    </a>
    </h1>
</div>

</body>
</html>

