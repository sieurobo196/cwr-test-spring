<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2>List type post</h2>
<div class="list-type-post">
    <c:forEach  items="${listType}" var ="typeDto">
        <div>
            <div><a href="${pageContext.request.contextPath}/${typeDto.type}/list">${typeDto.name}</a></div>
        </div>
    </c:forEach>
</div>
