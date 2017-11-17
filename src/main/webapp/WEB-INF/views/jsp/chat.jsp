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
                            <jsp:include page="./fragments/tools/metier/blocnote_user.jsp" />
                        </sec:authorize>
                    </div>
                    <div class="col-xs-8">
                        <div class="panel panel-success">
                            <div class="panel-heading">Messages</div>
                            <div class="list-group">
                                <a href="#" class="list-group-item list-group-item-success">
                                    <div class="row">
                                        <div class="col-xs-1">
                                            <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-responsive">
                                        </div>
                                        <div class="col-xs-11">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <label >Docteur Jarre</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    Parfois, il est preferable de tout éteindre pour ressortir la lumière...
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row">
                                        <div class="col-xs-1">
                                            <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-responsive">
                                        </div>
                                        <div class="col-xs-11">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <label>Docteur PIM</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    Message n°2
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row">
                                        <div class="col-xs-1">
                                            <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-responsive">
                                        </div>
                                        <div class="col-xs-11">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <label>Docteur PAM</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    Message n°3
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row">
                                        <div class="col-xs-1">
                                            <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-responsive">
                                        </div>
                                        <div class="col-xs-11">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <label>Docteur POUM</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    Message n°4
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-2">
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="./fragments/tools/user/tools_user.jsp" />
                        </sec:authorize>
                    </div>
                </div>
            </div>    
        </div>
        <jsp:include page="./fragments/footer.jsp" />
    </body>
</html>