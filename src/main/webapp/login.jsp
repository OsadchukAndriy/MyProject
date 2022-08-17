<%--
  Created by IntelliJ IDEA.
  User: andrejosadcuk
  Date: 03.08.2022
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setLocale value="${lang}"/>

<fmt:setBundle basename="messages"/>
<html>
<head>
    <title>Login</title>

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


<form action="I18Servlet" method="get">
    <select name="lan" >
        <option>en</option>
        <option>ua</option>
    </select>
    <input type="submit" name="go" value="<fmt:message key="periodicalsApply.apply" />"/>
</form>

<form action="login" method="post">
    <f class="limiter">
        <div class="container-login100" style="background-image: url('stile/images/bg-01.jpg');">





            <div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
				</span>

                <form class="login100-form validate-form p-b-33 p-t-5">

                    <div class="wrap-input100 validate-input" data-validate="Enter username">
                        <input style="color: #ffffff" class="input100" type="text" autocomplete="off" name="username"
                               placeholder="<fmt:message key="login.LogHolder" /> ">
                        <span class="focus-input100" data-placeholder="&#xe82a;"> </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Enter password">
                        <input style="color: #ffffff" class="input100" type="password" autocomplete="off" name="password"
                               placeholder="<fmt:message key="login.PassHolder" />">
                        <span class="focus-input100" data-placeholder="&#xe80f;"> </span>
                    </div>


                    <div class="container-login100-form-btn m-t-32">
                        <button class="login100-form-btn"><fmt:message key="label.button"/>
                        </button>
                    </div>


                    <div class="container-login100-form-btn m-t-32">
                        <button class="login100-form-btn">
                            <p class="text"><fmt:message key="label.haveAccount"/> <a
                                    href="registration.jsp"><fmt:message
                                    key="login.Signup"/></a></p>
                        </button>
                    </div>
                </form>

            </div>
        </div>
    </f>


    <%--  </div>--%>
    <%--  <div class="container" >--%>
    <%--    <p class="heading"><fmt:message key="login.LogIn" /> </p>--%>

    <%--    <div class="box">--%>
    <%--      <p><fmt:message key="login.Login" /></p>--%>
    <%--      <div> <input type="text" autocomplete="off" placeholder="<fmt:message key="login.LogHolder" />" name="username"> </div>--%>
    <%--    </div>--%>

    <%--    <div class="box" >--%>
    <%--      <p>Email</p>--%>
    <%--      <div> <input type="password" autocomplete="off" placeholder="<fmt:message key="login.PassHolder" />" name="password"> </div>--%>
    <%--    </div>--%>
    <%--      <button class="loginBtn"><fmt:message key="label.button" /> </button>--%>
    <%--    <p class="text"><fmt:message key="label.haveAccount" /> <a href="registration.jsp"><fmt:message key="login.Signup" /></a></p>--%>
    <%--  </div>--%>
    <%--</form>--%>


    <div id="dropDownSelect1"></div>

    <script src="stile/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="stile/vendor/animsition/js/animsition.min.js"></script>
    <script src="stile/vendor/bootstrap/js/popper.js"></script>
    <script src="stile/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="stile/vendor/select2/select2.min.js"></script>
    <script src="stile/vendor/daterangepicker/moment.min.js"></script>
    <script src="stile/vendor/daterangepicker/daterangepicker.js"></script>
    <script src="stile/vendor/countdowntime/countdowntime.js"></script>
    <script src="stile/js/main.js"></script>
</body>
</html>