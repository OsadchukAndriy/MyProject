<%--
  Created by IntelliJ IDEA.
  User: andrejosadcuk
  Date: 03.08.2022
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/WEB-INF/mytags.tld" prefix="m" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${lang}"/>
<fmt:setBundle basename="messages"/>

<html>
<head>
    <style>
        body {
            background-image: url('stile/images/bg-01.jpg');
        }
    </style>
    <title>Title</title>
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
        <input type="submit" name="goProf" value="<fmt:message key="periodicalsApply.apply" />"/>
    </form>
</div>

<div align="right"><fmt:message key="profil.myBill"/> ${money}$</div>
<div align="right"><a href="ReplenishServlet"><fmt:message key="profil.replenishMyBill"/></a></div>
<div align="left">
    <fmt:message key="profil.DataTime"/> <m:today/>
</div>

<h1 align="center"><fmt:message key="profil.MyProfil"/></h1>


<div align="center">
    <h1><a href="PeriodicalServlet">
        <button class="login100-form-btn">
            <fmt:message key="profil.ToCatalog"/>
        </button>
    </a></h1>
</div>
<br>


<h1><fmt:message key="profil.MyPeriodicals"/></h1>
<table border="10px" bgcolor="white" align="center">
    <th></th>
    <th><fmt:message key="profil.thName"/></th>
    <th><fmt:message key="profil.thType"/></th>
    <th><fmt:message key="profil.thDescription"/></th>
    <th></th>
    <c:forEach items="${myOrderslist}" var="magazine">
        <tr>
            <td><img src="images/magaz.png" height="54" width="58"/></td>
            <td>${magazine.name}</td>
            <td>${magazine.type}</td>
            <td>${magazine.description}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
