<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    .list-posts-detail {
        background: #eee !important;
    }

    .list-posts-detail ul li {
        font-size: 15px;
        color: #000;
        text-align: left;
        display: block;
        margin: 0px;
        list-style: disc;
        border-bottom: 1px dotted #bbb;
        padding: 5px 0px;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-4 col-xl-3">
            <div class="list-posts-detail">
                <ul class="first-chapter">
                    <li class="heading">Java Tutorial</li>
                    <c:forEach items="${listPost}" var="post">
                        <li class="current-chapter"><a href="${pageContext.request.contextPath}/${type}/${post.url}">${post.title}</a></li>
                    </c:forEach>

                </ul>
            </div>
        </div>
        <div class="col-sm-12 col-md-8 col-xl-9">
            content first post
        </div>
    </div>
</div>
