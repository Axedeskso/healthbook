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
                    <div class="col-xs-3">
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
                    <div class="col-xs-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                Profil
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <h2><label class="label label-success">Informations personnelles</label></h2>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>Nom</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    GARCIA GOZALVEZ
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>Prenom</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    Pau
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>Date de naissance</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    18 avril 1995
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>Lieu de naissance</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    Barcelone, Espagne
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <h2><label class="label label-success">Informations usuelles</label></h2>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>N° securité sociale</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    987321654
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>Mutuelle</label>
                                                </div>
                                                <div class="col-xs-6">SMENO</div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <h2>
                                            <label class="label label-success">Informations professionnelles</label>
                                    </h2>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>Metier</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    ${pageContext.request.userPrincipal.authorities}
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>RPPS</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    123456789
                                                </div>
                                            </div>
                                        </div>
                                                <div class="col-xs-6">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>Mis en fonction</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    04 septembre 2015
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>Lieu</label>
                                                </div>
                                                <div class="col-xs-6">
                                                    CHL, Ecole d'ingénieur ISIS, Castres, France
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-3">
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