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
                                        <i class="fa fa-list" aria-hidden="true"></i> Dictionnaire
                                    </div>
                                </div>
                                <div class="panel-body">
                                    Recueil de mots rangé par ordre alphabétique et suivi de leur définition
                                </div>
                                <div class="list-group">
                                
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