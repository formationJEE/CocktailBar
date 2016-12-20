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
                        <a type="boutton" class="btn btn-default" data-toggle="modal" data-target="#myModal" data-backdrop="static">
                            Ajout Ingredient
                        </a>
                        <a type="button" class="btn btn-danger" href="cocktails/del/${cocktail.id}.html">Supprimer</a>
                    </c:otherwise>
                </c:choose>

            </div>
        </div>
    </form>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Ajout Ingredient</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" method="post" action="addIngredientToCocktail.html">

                    <input type="hidden" name="cocktailId" value="${cocktail.id}">

                    <div class="form-group">
                        <label for="ingredient" class="col-sm-2 control-label">Ingredient</label>
                        <div class="col-sm-6">
                            <select class="form-control" name="ingredientId" id="ingredient">
                                <c:forEach var="ingredientCocktail" items="${ingredientCocktailList}">
                                    <option value="${ingredientCocktail.ingredient.id}">${ingredientCocktail.ingredient.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="quantity" class="col-sm-2 control-label">Quantite</label>
                        <div class="col-sm-6">
                            <input class="form-control" name="quantity" id="quantity" type="number" min="0" max="100" placeholder="in %">
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Save changes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<jsp:include page="layout/footer.jsp"/>
</body>
</html>
