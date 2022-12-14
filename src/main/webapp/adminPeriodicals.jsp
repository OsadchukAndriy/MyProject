<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: andrejosadcuk
  Date: 03.08.2022
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${lang}"/>
<fmt:setBundle basename="messages"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-image: url('stile/images/bg-01.jpg');
        }
    </style>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="CSS/adminPeriodicals.css">

</head>


<body>
<div align="right">
    <form  action="Logout"><input type="submit" value="<fmt:message key="periodicalsLogout.logout" />"></form>
</div>


<h1 align="right"><a href="AdminUsersServlet"> Users menegment</a></h1>


<h2>Current periodicals:</h2>

<div class="column left">
    <table border="5px" bgcolor="white">

        <th></th>
        <th>ID</th>
        <th><fmt:message key="name.name"/></th>
        <th>Price</th>
        <th>Type</th>
        <th>Description</th>
        <th></th>
        <c:forEach items="${periodicalsAdminList}" var="magazine">
            <tr>
                <td><img src="images/magazines.jpeg" height="54" width="58"/>
                </td>
                <td>${magazine.id}</td>
                <td>${magazine.name}</td>
                <td>${magazine.price}$</td>
                <td>${magazine.type}</td>
                <td>${magazine.description}</td>
                <td><a href="AdminPeriodicalsManagementServlet?deleteId=${magazine.id}"> <img src="images/d.PNG"
                                                                                              height="35"
                                                                                              width="55"></a></td>
                    <%--                                           <td>${list.indexOf(magazine)}</td>--%>
            </tr>
        </c:forEach>
    </table>
    <link rel="stylesheet" href="CSS/table.css">
</div>



<div class="column right">
    <div align="left"><h2>Edit Periodical:</h2></div>
    <div align="left">
        <form action="AdminPeriodicalsManagementServlet" method="post">
            <p><input type="text" name="Id" placeholder="Current id..."></p>
            <p><input type="text" name="editedName" placeholder="Edit name..."></p>
            <p><input type="text" name="editedType" placeholder="Edit type..."></p>
            <p><input type="text" name="editedPrice" placeholder="Edit price... $"></p>
            <p><textarea name="editedDescription" rows="5" cols="35" placeholder="Edit description..."></textarea></p>
            <p><input type="submit" value="Edit"></p>
        </form>
    </div>


    <div align="left"><h2>Add New Periodical:</h2></div>
    <div align="left">
        <form action="AdminPeriodicalsManagementServlet" method="post">
            <p><input type="text" name="name" placeholder="Name..."></p>
            <p><input type="text" name="type" placeholder="Type..."></p>
            <p><input type="text" name="price" placeholder="Price... $"></p>
            <p><textarea name="description" rows="5" cols="35" placeholder="Description..."></textarea></p>
            <p><input type="submit" value="Add"></p>
        </form>
    </div>
</div>

</body>
</html>


</body>
</html>
