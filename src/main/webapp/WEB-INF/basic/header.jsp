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
    <a class="navbar-brand logo" href="${pageContext.request.contextPath}/home"><span >CodeWR</span>.com</a>

    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/java">JAVA</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/python">PYTHON</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/css">CSS</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/javascript">JAVASCRIPT</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/typescript">TYPESCRIPT</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/android">ANDROID</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/flutter">FLUTTER</a>
        </li>

        <!-- Dropdown -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                DATABASE
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="${pageContext.request.contextPath}/mysql">MYSQL</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/sql-server">SQL SERVER</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/oracle">ORACLE</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/postgresql">POSTGRESQL</a>
            </div>
        </li>
    </ul>
<%--    <form class="form-inline" action="/action_page.php">--%>
<%--        <input class="form-control mr-sm-2" type="text" placeholder="Search">--%>
<%--        <button class="btn btn-success" type="submit">Search</button>--%>
<%--    </form>--%>
</nav>
