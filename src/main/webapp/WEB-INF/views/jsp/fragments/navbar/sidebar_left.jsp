<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="hasRole('ROLE_USER') || hasRole('ROLE_ADMIN')">
    <jsp:include page="../../fragments/tools/user/profil_user.jsp" />
</sec:authorize>
<sec:authorize access="hasRole('ROLE_USER')">
    <jsp:include page="../../fragments/tools/user/documents.jsp" />
    <jsp:include page="../../fragments/tools/user/security.jsp" />
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
    <jsp:include page="../../fragments/tools/administrateur/supervision.jsp" />
</sec:authorize>
<sec:authorize access="hasRole('ROLE_MEDECIN') or hasRole('ROLE_PHARMACIEN')">
    <jsp:include page="../../fragments/tools/metier/blocnote_user.jsp" />
</sec:authorize>

<sec:authorize access="hasRole('ROLE_IA')">
    <jsp:include page="../../fragments/tools/user/profil_user.jsp" />
</sec:authorize>