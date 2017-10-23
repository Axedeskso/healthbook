<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../../fragments/header.jsp" />
    <body>
        <jsp:include page="../../fragments/navbar/user/nav_user.jsp" />
        <div class="container-fluid" id="page-content-wrapper">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-2">
                        <jsp:include page="../../fragments/tools/user/profil_user.jsp" />
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="../../fragments/tools/user/blocnote_user.jsp" />
                        </sec:authorize>
                    </div>
                    <div class="col-xs-8">
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="#">
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    CdAM
                                                </div>
                                            </div>       
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-12 description">
                                                    Catalogue des actes médicaux
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <a href="#">
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    CdARR
                                                </div>
                                            </div>       
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-12 description">
                                                    Catalogue des actes de rééducation et réadaptation
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
                            <jsp:include page="../../fragments/tools/user/tools_user.jsp" />
                        </sec:authorize>
                    </div>
                </div>
            </div>    
        </div>
        <jsp:include page="../../fragments/footer.jsp" />
    </body>
</html>