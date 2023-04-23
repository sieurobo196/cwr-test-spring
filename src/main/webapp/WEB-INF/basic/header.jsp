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
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--<nav class="navbar navbar-inverse">--%>
<%--    <div class="container-fluid">--%>
<%--        <div class="navbar-header">--%>
<%--            <a class="navbar-brand logo" href="/"><span >CodeWR</span>.com</a>--%>
<%--        </div>--%>
<%--        <ul class="nav navbar-nav">--%>
<%--            <li class="active"><a href="#">Home</a></li>--%>
<%--            <li><a href="#">JAVA</a></li>--%>
<%--            <li><a href="#">HTML</a></li>--%>
<%--            <li><a href="#">CSS</a></li>--%>
<%--            <li><a href="#">JAVASCRIPT</a></li>--%>
<%--            <li><a href="#">TYPESCRIPT</a></li>--%>
<%--            <li><a href="#">DATABASE</a></li>--%>
<%--            <li><a href="#">ANDROID</a></li>--%>
<%--            <li><a href="#">FLUTTER</a></li>--%>
<%--        </ul>--%>
<%--        <form class="navbar-form navbar-right" action="/action_page.php">--%>
<%--            <div class="form-group">--%>
<%--                <input type="text" class="form-control" placeholder="Search" name="search">--%>
<%--            </div>--%>
<%--            <button type="submit" class="btn btn-default">Search</button>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</nav>--%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand logo" href="#"><span >CodeWR</span>.com</a>

    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="#">JAVA</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">HTML</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">CSS</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">JAVASCRIPT</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">TYPESCRIPT</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">ANDROID</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">FLUTTER</a>
        </li>

        <!-- Dropdown -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                DATABASE
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">MYSQL</a>
                <a class="dropdown-item" href="#">SQL SERVER</a>
                <a class="dropdown-item" href="#">ORACLE</a>
                <a class="dropdown-item" href="#">POSTGRESQL</a>
            </div>
        </li>
    </ul>
<%--    <form class="form-inline" action="/action_page.php">--%>
<%--        <input class="form-control mr-sm-2" type="text" placeholder="Search">--%>
<%--        <button class="btn btn-success" type="submit">Search</button>--%>
<%--    </form>--%>
</nav>
<br>
