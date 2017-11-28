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
        <div class="container-fluid" id="page-content-wrapper" style="padding-top: 4%;">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-2">
                        <jsp:include page="./fragments/tools/user/profil_user.jsp" />
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="./fragments/tools/user/documents.jsp" />
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_MEDECIN') or hasRole('ROLE_PHARMACIEN')">
                            <jsp:include page="./fragments/tools/metier/blocnote_user.jsp" />
                        </sec:authorize>
                    </div>
                    <div class="col-xs-8">
                        <div class="panel panel-success">
                            <div class="panel-heading"><i class="fa fa-user-o" aria-hidden="true"></i> Profil
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <ul class="nav nav-tabs">
                                        <li class="nav-item">
                                            <a data-toggle="tab" href="#tab_perso">Personnel</a>
                                        </li>
                                        <li class="nav-item">
                                            <a data-toggle="tab" href="#tab_pro">Professionnel</a>
                                        </li>
                                        <li class="nav-item">
                                            <a data-toggle="tab" href="#tab_sante">Santé</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                <div class="tab-pane fade in" id="tab_perso">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6"><label>Nom</label></div>
                                                <div class="col-xs-6">GARCIA GOZALVEZ</div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-6"><label>Prenom</label></div>
                                                <div class="col-xs-6">Pau</div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6"><label>Date de naissance</label></div>
                                                <div class="col-xs-6">18 avril 1995</div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-6"><label>Lieu de naissance</label></div>
                                                <div class="col-xs-6">Barcelona, Espagne <img src="<c:url value="/resources/core/img/flags/es.png" />" class="flag"/></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade in" id="tab_pro">
                                    <div class="row">
                                        <h4>Informations professionnelles</h4>
                                    </div>
                                </div>
                                <div class="tab-pane fade in" id="tab_sante">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6"><label>N° Sécurité sociale</label></div>
                                                <div class="col-xs-6">0123456789</div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6"><label>Mutuelle</label></div>
                                                <div class="col-xs-6">SMENO</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="./fragments/tools/administrateur/decompte_user.jsp" />
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_MEDECIN') or hasRole('ROLE_PHARMACIEN')">
                            <jsp:include page="./fragments/tools/metier/tools_user.jsp" />
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