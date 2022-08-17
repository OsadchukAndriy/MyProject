<%--
  Created by IntelliJ IDEA.
  User: andrejosadcuk
  Date: 03.08.2022
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-image: url('stile/images/bg-01.jpg');
        }
    </style>


</head>
<body>

<form action = "RegisterServlet" method="post">
    <table align="center" >
        <tr><td><h3>User name:</h3></td><td><input type="text" name="uname" size="30" height="10"></td></tr>
        <tr><td><h3>Password:</h3></td><td><input type="password" name="password" size="30"></td></tr>
        <tr><td><h3>Email:</h3></td><td><input type="text" name="email" size="30"></td></tr>
        <tr><td><h3>Phone:</h3></td><td><input type="text" name="phone" size="30"></td></tr>
        <tr><td></td><td><input type="submit" value="Register"></td></tr>

    </table>
</form>




</body>

</html>
