<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2>List type post</h2>
<div class="list-type-post">
    <c:forEach  items="${list}" var ="typeDto">
        <div>
            <div><a href="${pageContext.request.contextPath}/${typeDto.type}">${typeDto.name}</a></div>
            <div>----${typeDto.description}</div>
        </div>
    </c:forEach>
</div>