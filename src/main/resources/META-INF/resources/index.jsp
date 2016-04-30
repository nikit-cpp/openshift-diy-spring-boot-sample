<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <title>Первая программа</title>
</head>

<html>
<br>
Привет, мир!

<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />
<c:set var="base" value="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}" />

<br/>
requestURL=${url}

<br/>
requestURI=${uri}

<br/>
base=${base}

<c:set var="numbers" value="${['1','2','3','4','5','6','7','8','9','10']}" scope="application" />
<c:forEach var="num" items="${numbers}">
    <c:set var="tmp" value="${base}/${num}.jsp"/>
    <p><a href="${tmp}">Ссылка ${tmp}</a></p>
</c:forEach>

</body>
</html>
