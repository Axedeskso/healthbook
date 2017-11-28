<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid" >
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/healthbook/">Healthbook</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-left">

                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Rechercher">
                    <span class="input-group-btn">
                        <button class="btn btn-light btn-search" type="button"><span class="glyphicon glyphicon-search"></span></button>
                    </span>

                </div>
            </form>
            
                        

            <ul class="nav navbar-nav navbar-right">
                <li><a href="${contextPath}/profil">${pageContext.request.userPrincipal.name} <b>${pageContext.request.userPrincipal.authorities}</b></a></li>
                <sec:authorize access="hasRole('ROLE_MEDECIN') or hasRole('ROLE_PHARMACIEN')">
                <li><a href="${contextPath}/clients"><i class="fa fa-users" aria-hidden="true"></i>  Patientèle</a></li>
                </sec:authorize>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="glyphicon glyphicon-envelope"></span><span class="badge messages">4</span>

                    </a>
                    <ul class="dropdown-menu messenger-panel">
                        <li>
                            <a href="#">
                            <div class="row">
                                <div class="col-sm-12"><span class="badge">4</span> nouveaux messages</div>
                            </div>
                            </a>
                        </li>
                        <li role="separator" class="divider"></li>
                        <li  class="list-group-item-success">
                            <a href="#">
                                <div class="row">
                                    <div class="col-sm-2 img_messenger">
                                        <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-responsive">
                                    </div>
                                    <div class="col-sm-10 ">
                                        <div class="row">
                                            <div class="col-sm-11">Docteur Jarre</div>
                                            <div class="col-sm-1"></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 small">Message n°1</div>
                                        </div></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="row">
                                    <div class="col-sm-2 img_messenger">
                                        <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-responsive">
                                    </div>
                                    <div class="col-sm-10 ">
                                        <div class="row">
                                            <div class="col-sm-11">Docteur PIM</div>
                                            <div class="col-sm-1"></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 small">Message n°2</div>
                                        </div></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="row">
                                    <div class="col-sm-2 img_messenger">
                                        <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-responsive">
                                    </div>
                                    <div class="col-sm-10 ">
                                        <div class="row">
                                            <div class="col-sm-11">Docteur PAM</div>
                                            <div class="col-sm-1"></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 small">Message n°3</div>
                                        </div></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="row">
                                    <div class="col-sm-2 img_messenger">
                                        <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-responsive">
                                    </div>
                                    <div class="col-sm-10 ">
                                        <div class="row">
                                            <div class="col-sm-11">Docteur POUM</div>
                                            <div class="col-sm-1"></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 small">Message n°4</div>
                                        </div></div>
                                </div>
                            </a>
                        </li>
                        <li role="separator" class="divider"></li>
                        <li>
                            <a href="${contextPath}/chat">
                                <div class="row">
                                    <div class="col-sm-12">Afficher tous les messages</div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li id="btn-daynight">
                            <a href="#">
                                <div class="row">Mode Nuit <span class="glyphicon glyphicon-adjust pull-right"></span></div>
                            </a>
                        </li>
                        <li>
                            <a href="#"><div class="row">Paramètres <span class="glyphicon glyphicon-cog pull-right"></span></div>
                            </a>
                        </li>
                        <li>
                            <a href="${contextPath}/login?logout"><div class="row">Déconnexion <span class="glyphicon glyphicon-remove-sign pull-right"></span></div>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>