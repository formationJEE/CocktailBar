<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="layout/header.jsp" />
    <title>Ajout d'un cocktail</title>
</head>
<body>

<div class="col-md-offset-1 col-md-4 table-bordered">
    <h1>Ajout Cocktail</h1>
    <c:choose>
        <c:when test='${cocktail.id == null || "".equals(cocktail.id)}'>
            <c:url var="url" value="/cocktails/add.html"/>
        </c:when>
        <c:otherwise>
            <c:url var="url" value="/cocktails/edit.html"/>
        </c:otherwise>
    </c:choose>

    <form class="form-horizontal" method="post" action="${url}">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Nom</label>
            <input type="hidden" name="id" value="${cocktail.id}">
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Nom" name="name" value="${cocktail.name}">
            </div>
        </div>
        <div class="form-group">
            <label for="prix" class="col-sm-2 control-label">Prix</label>
            <div class="col-sm-10">
                <input type="number" min="0" max="1000" class="form-control" id="prix" placeholder="Prix" name="prix" value="${cocktail.prix}">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">Alcool</label>
            <div class="col-sm-10">
                <select class="form-control" name="withAlcohol">
                    <c:choose>
                        <c:when test='${cocktail.id == null || "".equals(cocktail.id)}'>
                            <option id="1" name="1" value="1">Oui</option>
                            <option id="0" name="0" value="0">Non</option>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${cocktail.withAlcohol == 1}">
                                    <option id="1" name="1" value="1" selected>Oui</option>
                                    <option id="0" name="0" value="0">Non</option>
                                </c:when>
                                <c:otherwise>
                                    <option id="1" name="1" value="1">Oui</option>
                                    <option id="0" name="0" value="0" selected>Non</option>
                                </c:otherwise>
                            </c:choose>
                        </c:otherwise>
                    </c:choose>

                </select>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <c:choose>
                    <c:when test='${cocktail.id == null || "".equals(cocktail.id)}'>
                        <button type="submit" class="btn btn-info">Ajouter</button>
                    </c:when>
                    <c:otherwise>
                        <button type="submit" class="btn btn-info">Modifier</button>
                        <a type="button" class="btn btn-danger" href="cocktails/del.html?id=${cocktail.id}">Supprimer</a>
                    </c:otherwise>
                </c:choose>

            </div>
        </div>
    </form>
</div>

<jsp:include page="layout/footer.jsp"/>
</body>
</html>
