<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="hasRole('ROLE_USER') or hasRole('ROLE_IA')">
    <jsp:include page="../../fragments/tools/administrateur/decompte_user.jsp" />
</sec:authorize>
<sec:authorize access="hasRole('ROLE_MEDECIN') or hasRole('ROLE_PHARMACIEN')">
    <jsp:include page="../../fragments/tools/metier/tools_user.jsp" />
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
    <jsp:include page="../../fragments/tools/administrateur/session_admin.jsp" />
</sec:authorize>