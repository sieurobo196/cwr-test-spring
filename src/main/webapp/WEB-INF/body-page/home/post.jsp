<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    .post-page {
        background: #eeeeff;
    }

    .post-detail-content {
        background: #fff;
        padding-top: 20px;
    }

    .post-detail-content .title-post {
        font-size: 20px;
        font-weight: bold;
        padding-bottom: 10px;
    }

    .post-detail-content .content-post {
        padding-top: 5px;
    }
    .left-menu-posts .current-chapter {
        padding: 5px 10px;
        border-bottom: 1px dotted;
    }
    .current-chapter.active {
        font-weight: bold;
    }
    .heading {
        font-size: 25px;
        font-weight: bold;
        color: red;
        border-bottom: 2px solid #000 !important;
    }
    .row.post-page-custom {
        margin: 0px !important;
    }
</style>
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-7326494175928694"
        crossorigin="anonymous"></script>
<div class="post-page">
    <div class="row post-page-custom">
        <div class="col-sm-12 col-md-3 col-xl-3 left-menu-posts">
            <div class="current-chapter heading"> Tutorials</div>
            <c:forEach items="${listPost}" var="post">
                <div class="current-chapter ${post.url==url ? 'active' :''} ${post.id}"><a
                        href="${pageContext.request.contextPath}/${type}/${post.url}">${post.title}</a></div>
            </c:forEach>
            <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-7326494175928694"
                    crossorigin="anonymous"></script>
        </div>
        <div class="col-sm-12 col-md-9 col-xl-9 post-detail-content">
            <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-7326494175928694"
                    crossorigin="anonymous"></script>
            <div class="title-post">${postDetail.title}</div>
            <div class="content-post">${postDetail.content}</div>
        </div>
       
    </div>
</div>
