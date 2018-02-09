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
                    <div class="col-xs-2">
                        <jsp:include page="./fragments/navbar/sidebar_left.jsp" />
                    </div>
                    <div class="col-xs-8">
                        <div class="panel panel-success">
                            <div class="panel-heading"><span class="glyphicon glyphicon-question-sign"></span> Aide</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-1"><img src="<c:url value="/resources/core/img/lock.png" />" class="img-responsive"></div>
                                    <div class="col-sm-11">Tout entitée comportant cette icone est verrouillée. Le cadena est caractérisé par une lettre.</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-1"><img src="<c:url value="/resources/core/img/unlock.png" />" class="img-responsive"></div>
                                    <div class="col-sm-11">Pour déverrouiller une entitée, vous devez trouver le cadena correspondant.</div>
                                </div>
                                <div class="divider"></div>
                                <div class="row">
                                    <div class="col-sm-1"><img src="<c:url value="/resources/core/img/forbit.png" />" class="img-responsive"></div>
                                    <div class="col-sm-11">Tout entitée comportant cette icone est interdit à l'utilisation sous peine d'être pénalisé.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <jsp:include page="./fragments/navbar/sidebar_right.jsp" />
                    </div>
                </div>
            </div>    
        </div>
        <jsp:include page="./fragments/footer.jsp" />
        <jsp:include page="./fragments/end.jsp" />
    </body>
</html>