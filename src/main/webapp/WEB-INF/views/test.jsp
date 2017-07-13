<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="include-head.jsp" %>
</head>
<body>
<header>
    <ul id="overflow-mobile" class="dropdown-content">
        <li><a href="#">T1</a></li>
        <li><a href="#">T2</a></li>
    </ul>
    <nav class="top-nav">
        <div class="nav-wrapper">

            <a href="#" data-activates="slide-out" class="button-collapse top-nav full hide-on-large-only"><i
                    class="material-icons">menu</i></a>
            <a href="/" class="brand-logo hide-on-med-and-down" style="margin-left: 16px">Test</a>
            <a href="#" class="brand-logo left hide-on-large-only" style="margin-left: 64px">Test</a>
            <ul id="nav-desktop" class="right hide-on-med-and-down">
                <li>
                    <form>
                        <div class="input-field">
                            <input id="search-1" type="search" required>
                            <label for="search-1"><i class="material-icons">search</i></label>
                            <i class="material-icons">close</i>
                        </div>
                    </form>
                </li>
                <li><a href="#">T1</a></li>
                <li><a href="#">T2</a></li>
            </ul>
            <ul id="nav-mobile" class="right hide-on-large-only">
                <li>
                    <form>
                        <div class="input-field">
                            <input id="search" type="search" required>
                            <label for="search"><i class="material-icons">search</i></label>
                            <i class="material-icons">close</i>
                        </div>
                    </form>
                </li>
                <li><a href="#" class="dropdown-button" data-activates="overflow-mobile"><i class="material-icons">more_vert</i></a>
                </li>
            </ul>
        </div>
    </nav>

    <ul id="slide-out" class="side-nav fixed">
        <li>
            <div class="userview">
                <div class="background">
                    <img class="crop-width"
                         src="${pageContext.request.contextPath}/resources/core/images/google-material-design-2.jpg">
                </div>
                <a href="#!user"><img class="circle"
                                      src="${pageContext.request.contextPath}/resources/core/images/google-material-design-2.jpg"></a>
                <a href="#!name"><span class="white-text name">Johann Bramhs</span></a>
                <a href="#!email"><span class="white-text email">jhnbramhs@toolkit.com</span></a>
            </div>
        </li>
        <li><a href="${pageContext.request.contextPath}/TradeSelect" class="waves-effect">模块选择</a></li>
        <li><a href="${pageContext.request.contextPath}/XMLEdit" class="waves-effect">XML 修改</a></li>
        <li><a href="#" class="waves-effect">批量执行</a></li>
        <li class="divider"></li>
        <li><a href="#" class="waves-effect">切换用户</a></li>
    </ul>
</header>
<main>
    <div class="container">
        <div class="card-panel">
            <p class="flow-text">Home page content here.
            </p>
        </div>
        <%--<div class="card-panel">--%>
        <%--<p class="flow-text">I am another piece of flow text.--%>
        <%--</p>--%>
        <%--</div>--%>
    </div>
</main>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/core/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/core/js/materialize.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/core/js/side-nav-test.js"></script>
</body>
</html>