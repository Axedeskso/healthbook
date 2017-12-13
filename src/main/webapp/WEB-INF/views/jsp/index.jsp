<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <jsp:include page="./fragments/header.jsp" />
    <body>
        <jsp:include page="./fragments/navbar/nav_user.jsp" />
        <div class="container-fluid" id="page-content-wrapper">
            <div class="page-content">
                <div class="row">
                    <div class="col-lg-2 hidden-sm">
                        <jsp:include page="./fragments/navbar/sidebar_left.jsp" />
                    </div>
                    <div class="col-lg-8 col-sm-12">
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="./fragments/actualite.jsp" />
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            <jsp:include page="./fragments/admin/joueurs.jsp" />
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_IA')">
                            <video width="100%" autoplay="true" src="<c:url value="/resources/core/video/visage.mp4" />">TEST</video>
                            </sec:authorize>
                    </div>
                    <div class="col-lg-2 hidden-sm">
                        <jsp:include page="./fragments/navbar/sidebar_right.jsp" />
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="./fragments/footer.jsp" />
        <jsp:include page="./fragments/end.jsp" />
    </body>
</html>