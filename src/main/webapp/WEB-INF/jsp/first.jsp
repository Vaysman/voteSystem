<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">

</head>
<body>

<div class="container">
    Admin`s page <br>
    <a href="/meals">Meals</a>
    <a href="/menus">Menus</a>
    <a href="/menuMeal">Menu-Meal</a>
    <a href="/places">Places</a>
    <a href="/placeMenu">Place-Menu</a>
    <a href="/users">Users</a>
    <a href="/voteStory">Vote story edit</a>
    <hr>
    <c:forEach items="${meals}" var="meal">
        <jsp:useBean id="meal" scope="page" type="model.Meal"/>
        <tr>

            <td><c:out value="${meal.name}"/></td>
            <td><c:out value="${meal.price}"/></td>
            <td><a href="/updateMeal?uuid=${meal.uuid}">редактировать</a></td>
            <td><a href="/deleteMeal?uuid=${meal.uuid}">удалить</a></td>
        </tr>
        <br>
    </c:forEach>
    <a href="create">create meal</a>
    <a href="another">another</a>
</div>

<script type="text/javascript" src="webjars/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js" defer></script>
</body>
</html>