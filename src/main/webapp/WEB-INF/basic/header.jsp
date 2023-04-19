<style>
    .logo>span {
        color: #ff5000;
    }
    .trade_navigation {
        background: #39bd00;
    }
</style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<link rel="shortcut icon" type="image/x-icon" href="favicon.png"/>--%>

<%--<div class="container">--%>
<%--    <h1><span>CodeWR</span>.com</h1>--%>
<%--</div>--%>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand logo" href="/"><span >CodeWR</span>.com</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">JAVA</a></li>
            <li><a href="#">HTML</a></li>
            <li><a href="#">CSS</a></li>
            <li><a href="#">JAVASCRIPT</a></li>
            <li><a href="#">TYPESCRIPT</a></li>
            <li><a href="#">DATABASE</a></li>
            <li><a href="#">ANDROID</a></li>
            <li><a href="#">FLUTTER</a></li>
        </ul>
        <form class="navbar-form navbar-left" action="/action_page.php">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" name="search">
            </div>
            <button type="submit" class="btn btn-default">Search</button>
        </form>
    </div>
</nav>
