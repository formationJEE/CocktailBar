<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="layout/header.jsp" />
    <title>Ajout d'un ingredient</title>
</head>
<body>

<div class="col-md-offset-1 col-md-4 table-bordered">
    <h1>Ajout Ingredient</h1>
    <c:choose>
        <c:when test='${ingredient.id == null || "".equals(ingredient.id)}'>
            <c:url var="addUrl" value="/ingredients/add2.html"/>
        </c:when>
        <c:otherwise>
            <c:url var="addUrl" value="/ingredients/edit.html"/>
        </c:otherwise>
    </c:choose>

    <form class="form-horizontal" method="post" action="${addUrl}">
        <input type="hidden" name="id" value="${ingredient.id}"/>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Nom</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Nom" name="name" value="${ingredient.name}">
            </div>
        </div>
        <div class="form-group">
            <label for="state" class="col-sm-2 control-label">Etat</label>
            <div class="col-sm-10">
                <input type="number" min="0" max="2" class="form-control" id="state" name="state" value="${ingredient.state}">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <c:choose>
                    <c:when test='${ingredient.id == null || "".equals(ingredient.id)}'>
                        <button type="submit" class="btn btn-info">Ajouter</button>
                    </c:when>
                    <c:otherwise>
                        <button type="submit" class="btn btn-info">Modifier</button>
                        <a type="button" class="btn btn-danger" href="ingredients/del.html?id=${ingredient.id}">Supprimer</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </form>
</div>

<jsp:include page="layout/footer.jsp"/>
</body>
</html>
