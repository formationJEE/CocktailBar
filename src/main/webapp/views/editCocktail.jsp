<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<jsp:include page="layout/header.jsp"/>
<c:url var="saveUrl" value="/cocktail/save.html"/>
<body>
    <div class="container-fluid">
        <div class="cocktail-details">
            <h2>Modifier Cocktail</h2>

                <form:form modelAttribute="cocktail" action="${saveUrl}" cssClass="form-horizontal">
                    <form:hidden path="id"/>
                    <div class="form-group">
                        <form:label path="name">Nom</form:label>
                        <form:input path="name"/>
                    </div>
                    <div class="form-group">
                        <form:label path="prix">Prix</form:label>
                        <form:input path="prix" type="number" min="0" step="0.01"/>
                    </div>
                    <div class="form-group">
                        <form:label path="withAlcohol" for="withAlcohol">Alcool?</form:label>
                        <form:checkbox path="withAlcohol" id="withAlcohol"/>
                    </div>
                    <button class="btn-default">Valider</button>
                </form:form>

        </div>
        <div class="cocktail-ingredients">

        </div>
    </div>
<jsp:include page="layout/footer.jsp"/>
</body>
</html>
