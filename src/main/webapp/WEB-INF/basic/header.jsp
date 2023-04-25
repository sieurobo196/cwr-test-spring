<style>
    .logo>span {
        color: #ff5000;
    }
    .trade_navigation {
        background: #39bd00;
    }
    .bg-dark {
        background: #39bd00 !important;
    }
    .navbar-dark .navbar-nav .nav-link {
        color: white !important;
    }
</style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
