<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>List post detail</h2>
<div class="list-post">
    <c:forEach items="${listPost}" var="post">
        <div>
            <div><a href="${pageContext.request.contextPath}/${type}/${post.url}">${post.name}</a></div>
        </div>
    </c:forEach>
</div>
