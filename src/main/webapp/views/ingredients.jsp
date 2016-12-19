<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<jsp:include page="layout/header.jsp" />

    <title>Liste des Ingredients</title>
</head>
<body>
<br>
    <div class="container-fluid">
        <div class="table-bordered col-md-7">
            <h1>Liste des ingredients:</h1>

            <table id="ingredientsTable" class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th hidden>id</th>
                        <th>nom</th>
                        <th>etat</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach var="ingredient" items="${ingredients}">

                        <tr class='clickable-row' data-href="/ingredients/edit.html?id=${ingredient.id}&state=${ingredient.state}&name=${ingredient.name}">
                            <td hidden>${ingredient.id}</td>
                            <td>
                                ${ingredient.name}
                            </td>
                            <td>
                                <c:choose>
                                    <c:when test="${ingredient.state == 0}">
                                        Liquide
                                    </c:when>
                                    <c:when test="${ingredient.state == 1}">
                                        Solide
                                    </c:when>
                                    <c:otherwise>
                                        Gaz
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

    $("#ingredientsTable").DataTable({
        pageLength: 5,
        lengthMenu: [5, 10, 15],
        colReorder: true
    });


</script>

</body>
</html>
