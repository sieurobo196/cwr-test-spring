<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Codewr.com</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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
