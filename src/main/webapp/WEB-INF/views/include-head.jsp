<%--
  Created by IntelliJ IDEA.
  User: Kenny
  Date: 2016/12/21
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/resources/core/css/icon.css" var="iconCss"/>
<spring:url value="/resources/core/css/materialize.min.css" var="materialMinCss"/>
<spring:url value="/resources/core/css/misc-styling.css" var="miscStylingCss"/>
<link href="${iconCss}" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="${materialMinCss}" media="screen,projection">
<link type="text/css" rel="stylesheet" href="${miscStylingCss}" media="screen,projection">

<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
