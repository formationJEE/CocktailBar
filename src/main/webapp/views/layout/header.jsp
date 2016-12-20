<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Application CocktailBar</title>
    <c:url value="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" var="bootstrapUrl" />
    <c:url value="/webjars/bootstrap/3.3.7-1/js/bootstrap.js" var="bootstrapJsUrl" />
    <c:url value="/webjars/jquery/3.1.1-1/jquery.min.js" var="jqueryUrl" />
    <c:url value="/webjars/datatables/1.10.12" var="datatablesUrl" />
    <c:url value="/webjars/datatables-colreorder/1.2.0" var="datatablesReorderUrl" />


    <link rel="stylesheet" href="${bootstrapUrl}">
    <link rel="stylesheet" href="${datatablesUrl}/css/jquery.dataTables.min.css">
    <%--<link rel="stylesheet" href="<c:url value='/css/application.css' />">--%>

    <script src="${jqueryUrl}" type="text/javascript"></script>
    <script src="${datatablesUrl}/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="${datatablesReorderUrl}/js/dataTables.colReorder.js" type="text/javascript"></script>
    <script src="${bootstrapJsUrl}" type="text/javascript"></script>

</head>
</html>
