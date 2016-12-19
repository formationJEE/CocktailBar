<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<jsp:include page="layout/header.jsp" />

    <title>Liste des Cocktails</title>
</head>
<body>
<br>
    <div class="container-fluid">
        <div class="table-bordered col-md-7">
            <h1>Liste des cocktails:</h1>

            <table id="cocktailsTable" class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th hidden>id</th>
                        <th>nom</th>
                        <th>prix</th>
                        <th>Alcool</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cocktail" items="${cocktails}">
                        <tr class='clickable-row' data-href="/cocktails/edit.html?id=${cocktail.id}&name=${cocktail.name}&prix=${cocktail.prix}&withAlcohol=${cocktail.withAlcohol}">
                            <td hidden>${cocktail.id}</td>
                            <td>
                                ${cocktail.name}
                            </td>
                            <td>
                                ${cocktail.prix} $
                            </td>
                            <td>
                                <c:choose>
                                    <c:when test="${cocktail.withAlcohol == 1}">
                                        Oui
                                    </c:when>
                                    <c:otherwise>
                                        Non
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </div>

<jsp:include page="layout/footer.jsp" />

<script type="text/javascript">
    $(".clickable-row").click(function() {
        window.document.location = $(this).data("href");
    });

    $("#cocktailsTable").DataTable({
        pageLength: 5,
        lengthMenu: [5, 10, 15],
        colReorder: true
    });
</script>

</body>
</html>
