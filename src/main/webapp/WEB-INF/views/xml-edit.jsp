<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kenny
  Date: 2016/12/16
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" href="${pageContext.request.contextPath}/resources/core/css/icon.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/core/css/materialize.min.css" media="screen,projection">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/misc-styling.css"
          media="screen,projection">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
            <a href="${pageContext.request.contextPath}/" class="brand-logo hide-on-med-and-down"
               style="margin-left: 16px">Test</a>
            <a href="${pageContext.request.contextPath}/" class="brand-logo left hide-on-large-only"
               style="margin-left: 64px">Test</a>
            <ul id="nav-desktop" class="right hide-on-med-and-down">
                <li>
                    <form>
                        <div class="input-field">
                            <input id="search" type="search" required>
                            <label for="search"><i class="material-icons">search</i></label>
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
                            <input id="search-1" type="search" required>
                            <label for="search-1"><i class="material-icons">search</i></label>
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
        <li class="active"><a href="${pageContext.request.contextPath}/XMLEdit" class="waves-effect">XML 修改</a></li>
        <li><a href="#!" class="waves-effect">批量执行</a></li>
    </ul>
</header>
<main>
    <div class="row">
        <div class="col s12">
            <!-- XML条目信息与编辑按钮表格 -->
            <table class="striped">
                <thead>
                <tr>
                    <th style="width: 64px;"></th>
                    <th>交易代码</th>
                    <th>对应分行编号</th>
                    <th>案例输入日期</th>
                    <th>所属交易流</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><a href="#modal-edit" class="waves-effect"><i class="material-icons left">edit</i></a></td>
                    <td>Shirou-chan</td>
                    <td>kawaii!</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href="#!row2-edit" class="waves-effect"><i class="material-icons left">edit</i></a></td>
                    <td>Test1</td>
                    <td>Test2</td>
                    <td></td>
                    <td></td>
                </tr>
                <c:forEach items="${xmlList}" var="xmls">
                    <tr>
                        <td><a href="#!row2-edit" class="waves-effect"><i class="material-icons left">edit</i></a></td>
                        <td>Card TITLE</td>
                        <td><c:out value="${xmls.toString()}"/></td>
                        <td></td>
                        <td></td>
                    </tr>
                </c:forEach>
                <tr>
                    <td><a href="#!modal-new" class="waves-effect"><i class="material-icons">add</i></a></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>

    <!-- 编辑表单 -->
    <div id="modal-edit" class="modal">
        <div class="modal-content">
            <h4>Modal Header</h4>
            <div class="row">
                <div class="input-field col s6">
                    <input id="first_name" type="text" class="validate">
                    <label for="first_name">First Name</label>
                </div>
                <div class="input-field col s6">
                    <input id="name" type="text" class="validate">
                    <label for="name">First Name</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="address" type="text" class="validate">
                    <label for="address">First Name</label>
                </div>
                <div class="input-field col s3">
                    <input id="phone_number" type="text" class="validate">
                    <label for="phone_number">First Name</label>
                </div>
                <div class="input-field col s3">
                    <input id="postal_code" type="text" class="validate">
                    <label for="postal_code">First Name</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-action modal-close waves-effect btn-flat">Save</a>
        </div>
    </div>
</main>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/core/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/core/js/materialize.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/core/js/side-nav-test.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/core/js/modal-trigger.js"></script>
</body>
</html>
