<%--
 * layout.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<base
	href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="shortcut icon" href="favicon.ico" />

<script type="text/javascript" src="scripts/acme.js"></script>
<script type="text/javascript" src="scripts/cookiePopups.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>


<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
<link rel="stylesheet" href="styles/acme.css" type="text/css">
<link rel="stylesheet" href="styles/common.css" type="text/css">
<link rel="stylesheet" href="styles/cookie.css" type="text/css">
<link rel="stylesheet" href="styles/topnav.css" type="text/css">
<link rel="stylesheet" href="styles/displaytag.css" type="text/css">
<link rel="stylesheet" href="styles/timeline.css" type="text/css">

<title><tiles:insertAttribute name="title" ignore="true" /></title>
<jstl:set var="idioma" scope="application"
	value="${pageContext.response.locale}" />
<jstl:choose>
	<jstl:when test="${idioma eq 'es'}">
		<jstl:set var="userSelectedLanguage" scope="application"
			value="Spanish" />
	</jstl:when>
	<jstl:otherwise>
		<jstl:set var="userSelectedLanguage" scope="application"
			value="English" />
	</jstl:otherwise>
</jstl:choose>
</head>
<body>
	<div class="header">
		<tiles:insertAttribute name="header" />
	</div>
	<div class="content">
		<div class="cuerpo">
			<img src="images/news.png" alt="Acme-Newspaper Co., Inc."
				class="logo" />
		</div>
		<div class="panel cuerpo">
			<jstl:if test="${message != null}">
				<br />
				<span class="message"><spring:message code="${message}" /></span>
			</jstl:if>
			<h1>
				<tiles:insertAttribute name="title" />
			</h1>
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>

</body>
</html>