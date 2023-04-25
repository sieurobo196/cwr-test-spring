<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    .item-language {
        background: #D9EEE1;
        border-radius: 20px;
        padding: 10px;
        margin-bottom: 20px;
        height: 250px;
    }

    .item-language > h2, p {
        text-align: center;
    }

    .button-learn {
        bottom: 30px;
        position: absolute;
        right: 70px;
    }
    .container.css-main {
        padding: 15px;
        background-color: #eef;
    }
</style>
<div class="container css-main">
    <div class="row">
        <c:forEach items="${languageDtos}" var="languageDto">
            <div class="col-sm-6 col-md-4 col-xl-3">
                <div class="item-language">
                    <h2>${languageDto.name}</h2>
                    <p>${languageDto.description}</p>
                    <div class="button-learn"><a class="btn btn-primary" href="${pageContext.request.contextPath}/${languageDto.url}/detail">Learning now >></a></div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
