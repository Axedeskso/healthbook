<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <jsp:include page="./fragments/header.jsp" />

    <sec:authorize access="hasRole('ROLE_USER') || hasRole('ROLE_ADMIN')">
        <body>
            <video id="" width="100%" autoplay loop>
                <source id="" src="http://192.168.10.2:8080/videos/V14.mp4" type='video/mp4' />
            </video>
            <jsp:include page="./fragments/end.jsp" />
        </body>
    </sec:authorize>
</html>