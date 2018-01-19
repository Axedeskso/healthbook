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
                        <jsp:include page="../../fragments/tools/user/profil_user.jsp" />
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="../../fragments/tools/metier/blocnote_user.jsp" />
                        </sec:authorize>
                    </div>
                    <div class="col-xs-8">
                        <div class="row">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <div class="row">
                                        <i class="fa fa-list" aria-hidden="true"></i> Nomenclatures
                                    </div>
                                </div>
                                <div class="panel-body">
                                    Ensemble des termes méthodiquement classés.
                                </div>
                                <div class="list-group">
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                NGAP
                                            </div>
                                            <div class="col-sm-10 description">
                                                Nomemclature Générale des Actes Professionnels
                                            </div>
                                        </div>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                NABM
                                            </div>
                                            <div class="col-sm-10 description">
                                                Nomemclature des Actes de Biologie Médicale
                                            </div>
                                        </div>
                                    </a>
                                    <a href="${contextPath}/tools/nomenclatures/snomed" class="list-group-item">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                SNOMED CT
                                            </div>
                                            <div class="col-sm-10 description">
                                                Standardized NOmenclature of MEDicine Clinical Term
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="../../fragments/tools/metier/tools_user.jsp" />
                        </sec:authorize>
                    </div>
                </div>
            </div>    
        </div>
        <jsp:include page="../../fragments/footer.jsp" />
    </body>
</html>