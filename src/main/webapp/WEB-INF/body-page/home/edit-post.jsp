<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa bài báo</title>
</head>
<body>
<h1>Chỉnh sửa bài báo</h1>
<form method="post" action="/articles/${article.id}">
    <input type="hidden" id="id" name="id" value="${article.id}">
    <div class="title-edit">
        <label for="title">Tiêu đề:</label>
        <input width="100%" type="text" id="title" name="title" value="${article.title}" required>
    </div>

    <div class="content-edit">
        <textarea id="content" name="content" required width="100%">${article.content}</textarea>
    </div>

    <button type="submit">Lưu</button>
</form>
</body>
</html>
