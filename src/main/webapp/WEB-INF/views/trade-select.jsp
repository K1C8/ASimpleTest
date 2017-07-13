<%--
  Created by IntelliJ IDEA.
  User: Kenny
  Date: 2016/12/21
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include-head.jsp" %>
<body>
<header>
    <nav class="nav-extended">
        <div class="nav-wrapper">
            <a href="#" data-activates="slide-out" class="button-collapse top-nav full hide-on-large-only"><i
                    class="material-icons">menu</i></a>
            <a href="${pageContext.request.contextPath}/" class="brand-logo hide-on-med-and-down"
               style="margin-left: 16px">Test</a>
            <a href="${pageContext.request.contextPath}/" class="brand-logo left hide-on-large-only"
               style="margin-left: 72px">Test</a>
            <ul id="nav-desktop" class="right hide-on-med-and-down">
                <li>
                    <form style="margin-bottom: 0; height: 64px;">
                        <div class="input-field">
                            <input id="search" type="search" name="searchField" required>
                            <label for="search"><i class="material-icons">search</i></label>
                            <i class="material-icons">close</i>
                        </div>
                    </form>
                </li>
                <li><a href="#">T1</a></li>
                <li><a href="#">T2</a></li>
            </ul>
            <ul id="overflow-mobile" class="dropdown-content">
                <li><a href="#">T1</a></li>
                <li><a href="#">T2</a></li>
            </ul>
            <ul id="nav-mobile" class="right hide-on-large-only">
                <li>
                    <form method="POST" action="" style="margin-bottom: 0px; height: 64px;">
                        <div class="input-field">
                            <input id="search-mobile" type="search" name="searchField" required>
                            <label for="search-mobile"><i class="material-icons">search</i></label>
                            <i class="material-icons">close</i>
                        </div>
                    </form>
                </li>
                <li><a href="#" class="dropdown-button" data-activates="overflow-mobile"><i class="material-icons">more_vert</i></a>
                </li>
            </ul>
        </div>
        <div class="nav-content">
            <ul class="tabs tabs-transparent" id="module-list">
                <li class="tab"><a id="mm-tab" onclick="showTradeById('0')">MM</a></li>
                <li class="tab"><a id="ex-tab" onclick="showTradeById('1')">EX</a></li>
                <li class="tab"><a id="im-tab" onclick="showTradeById('2')">IM</a></li>
                <li class="tab"><a id="cm-tab" onclick="showTradeById('3')">CM</a></li>
                <li class="tab"><a id="fx-tab" onclick="showTradeById('4')">FX</a></li>
                <li class="tab"><a id="pm-tab" onclick="showTradeById('5')">PM</a></li>
                <li class="tab"><a id="cb-tab" onclick="showTradeById('6')">CB</a></li>
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
        <li class="active"><a href="${pageContext.request.contextPath}/TradeSelect" class="waves-effect">模块选择</a></li>
        <li><a href="${pageContext.request.contextPath}/XMLEdit" class="waves-effect">XML 修改</a></li>
        <li><a href="#!" class="waves-effect">批量执行</a></li>
    </ul>
</header>
<main>
    <div class="container section">
        <div class="row z-depth-1 white">
            <div class="section col s12" style="padding-top:16px; padding-bottom: 16px">
                <div id="div0" style="display:inline">
                    <form id="form0" style="display:inline">
                        <a class="btn-flat waves-effect" id="mm-trade-test" onclick="test('39991', '2')">39991 IT/IP
                            Open</a>
                        <c:forEach items="${tradeList}" var="trades">
                            <a class="btn-flat waves-effect" id="mm_<c:out value="${trades.tradeID}"/>"
                               onclick="test('<c:out value="${trades.tradeID}"/>', '2')">
                                <c:out value="${trades.tradeID}"/> <c:out value="${trades.tradeName}"/>
                            </a>
                        </c:forEach>
                    </form>
                </div>

                <div id="div1" style="display:none">
                    <form id="form1" style="display:none">
                        <a class="btn-flat waves-effect" id="ex-trade-test" onclick="test('40011', '3')">EX Open
                            40011</a>
                    </form>
                </div>

                <div id="div2" style="display:none">
                    <form id="form2" style="display:none">
                        <a class="btn-flat waves-effect" id="im-trade-test">IMBA 90001</a>
                    </form>
                </div>
            </div>

        </div>
    </div>

</main>
<%@ include file="include-js.jsp" %>

<!-- Need more attetion and improvement here. -->
<script type="text/javascript">
    function test(tradeId, moduleId) {
        var form = document.forms[moduleId];
        //form.action = "${pageContext.request.contextPath}/XMLEdit/" + tradeId + ".htm";
        form.action = "${pageContext.request.contextPath}/XMLEdit";
        form.method = "get";
        form.submit();
    }

    function showTradeById(targetId) {
        var moduleList = document.getElementById('module-list');
        var moduleListElements = moduleList.getElementsByTagName('li');
        var moduleCount = moduleListElements.length;
        var targetDiv = "div" + targetId;
        var targetForm = "form" + targetId;
        showComponentInlineById(targetDiv);
        showComponentInlineById(targetForm);

        for (var i = 0; i < moduleCount; i++) {
            targetDiv = "div" + i;
            targetForm = "form" + i;

            if (i != targetId) {
                hideComponentById(targetForm);
                hideComponentById(targetDiv);
            }
        }
    }
</script>

</body>
</html>
