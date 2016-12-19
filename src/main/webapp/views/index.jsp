<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Application CocktailBar</title>
</head>
<body>

    <h1>Bienvenue au Cocktail Bar</h1>
    <div>
        Menu:
        <ul>
            <c:forEach var="menu" items="${menus}">
                <c:url var="menuUrl" value="${menu.url}"/>
                <li><a href="${menuUrl}.html">${menu.title}</a> </li>
            </c:forEach>
        </ul>
    </div>

</body>
</html>
