<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <jsp:include page="../../fragments/header.jsp" />
    <body>
        <jsp:include page="../../fragments/navbar/nav_user.jsp" />
        <div class="container-fluid" id="page-content-wrapper">           
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-2">
                        <jsp:include page="../../fragments/navbar/sidebar_left.jsp" />
                    </div>
                    <div class="col-xs-8">
                        <div class="row">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <div class="row">
                                        <i class="fa fa-list" aria-hidden="true"></i> Catalogues
                                    </div>
                                </div>
                                <div class="panel-body">Répartition des objets par classes. Construction autour d'un principe de différentiation</div>
                                <div class="list-group">
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                CCAM
                                            </div>
                                            <div class="col-sm-10 description">
                                                Classification Commune des Actes Médicaux
                                            </div>
                                        </div>
                                    </a>
                                    <a href="${contextPath}/tools/classifications/cim10" class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                CIM-10
                                            </div>
                                            <div class="col-sm-10 description">
                                                Classification Internationale des Maladies (Revision 10)
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <jsp:include page="../../fragments/navbar/sidebar_right.jsp" />
                    </div>
                </div>
            </div>    
        </div>
        <jsp:include page="../../fragments/footer.jsp" />
    </body>
</html>