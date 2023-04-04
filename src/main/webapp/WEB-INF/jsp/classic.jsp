<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title><tiles:getAsString name="title"/></title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>
<div class="body-page">
    <div class="header">
        <tiles:insertAttribute name="header"/>
    </div>
    <div class="body-content">
        <c:if test="${showMenu}">
            <div class="menu">
                <tiles:insertAttribute name="menu"/>
            </div>
        </c:if>

        <div class="main-body">
            <tiles:insertAttribute name="body"/>
        </div>
    </div>
    <div class="footer">
        <tiles:insertAttribute name="footer"/>
    </div>
</div>
</body>
</html>
