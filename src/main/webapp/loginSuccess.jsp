<%--
  Created by IntelliJ IDEA.
  User: andrejosadcuk
  Date: 03.08.2022
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page isELIgnored="false" %>

    <fmt:setLocale value="${lang}"/>

    <fmt:setBundle basename="messages"/>

    <title>Title</title>
    <style>
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
<%@ page import=" Servlets.RegisterLoginServlets.LoginServlet" %>
<%@ page import="java.util.List" %>
<%@ page import="Entity.Periodical" %>


<div align="right">
    <form action="Logout"><input type="submit" value="<fmt:message key="periodicalsLogout.logout" />"></form>
</div>
<div align="right"><a href="ProfilServlet"><fmt:message key="periodicals.toMyProfil"/></a></div>

<form action="I18Servlet" method="get">
    <select name="lan">
        <option>en</option>
        <option>ru</option>
    </select>
    <input type="submit" name="goUserLoginSuccess" value="<fmt:message key="periodicalsApply.apply" />"/>


</form>


<div align="center">
    <h1><fmt:message key="loginSuccess.hi"/></h1>
    <hr>
    <p>
    <h1><fmt:message key="loginSuccess.welcome"/> <c:out value="${username}"/>!</h1></p>

    <c:set var="str" value="n"/>
    <c:set var="x" value="777"></c:set>


    <c:out value="${un}"/>

</div>
<br>
<br>
<br>
<div align="center">
    <h1><a href="PeriodicalServlet">
        <button class="login100-form-btn">
            <fmt:message key="profil.ToCatalog"/>
        </button>
    </a></h1>
</div>

<c:out value="${sss}"/>
</body>
</html>
