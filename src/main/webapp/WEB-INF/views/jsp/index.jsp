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
        <jsp:include page="./fragments/navbar/user/nav_user.jsp" />
        <div class="container-fluid" id="page-content-wrapper">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-2">
                        <jsp:include page="./fragments/tools/user/profil_user.jsp" />
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            <div class="row">
                                <a href="/healthbook/administration"><button class="btn btn-success btn-block">ADMINISTRATION</button></a>
                            </div>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="./fragments/tools/user/blocnote_user.jsp" />
                        </sec:authorize>
                    </div>
                    <div class="col-xs-8">
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            ${adm}
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="./fragments/tools/user/main_content.jsp" />
                        </sec:authorize>
                    </div>
                    <div class="col-xs-2">
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="./fragments/tools/user/tools_user.jsp" />
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            <jsp:include page="./fragments/tools/administrateur/session_admin.jsp" />
                        </sec:authorize>
                    </div>
                </div>
            </div>    
        </div>
        <jsp:include page="./fragments/footer.jsp" />
    </body>
</html>