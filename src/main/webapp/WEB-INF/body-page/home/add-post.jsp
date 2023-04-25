<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tạo mới bài báo</title>
</head>
<body>
    <h1>Tạo mới bài báo</h1>
    <form method="post" action="/articles">
        <label for="title">Tiêu đề:</label>
        <input type="text" id="title" name="title" required>

        <label for="content">Nội dung:</label>
        <textarea id="content" name="content" required></textarea>

        <button type="submit">Lưu</button>
    </form>
</body>
</html>
