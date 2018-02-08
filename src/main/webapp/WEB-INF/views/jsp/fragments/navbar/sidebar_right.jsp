<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<sec:authorize access="hasRole('ROLE_ADMIN')">
    <jsp:include page="../../fragments/tools/administrateur/session_admin.jsp" />
    <c:if test="${not empty launch}">
        <jsp:include page="../../fragments/tools/administrateur/decompte_user.jsp" />
    </c:if>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_USER') or hasRole('ROLE_IA')">
    <c:if test="${not empty cible}">
        <jsp:include page="../../fragments/tools/administrateur/decompte_user.jsp" />
    </c:if>
    <jsp:include page="../../fragments/tools/metier/tools_user.jsp" />
</sec:authorize>