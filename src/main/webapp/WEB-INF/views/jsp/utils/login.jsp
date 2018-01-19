<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../fragments/header.jsp" />
    <body>
        <div class="row">
            <div class="col-12">
                <div class="login-clean">
                    <form name="loginForm" action="${loginUrl}" method='POST'>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12"><h1 class="text-success text-center"><span class="label label-success">Healthbook</span></h1></div>
                            </div>
                        </div>
                        <c:if test="${not empty error}">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-12" style="text-align:center; color:#28a745">
                                        <div class="error">${error}</div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${not empty msg}">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-12" style="text-align:center; color:#28a745">
                                        <div class="msg">${msg}</div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-group">
                                        <span class="input-group-addon" id="sizing-addon2"><span class="glyphicon glyphicon-user"></span></span>
                                        <input type="text" class="form-control" placeholder="Nom d'utilisateur" name="username" aria-describedby="sizing-addon2">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-group">
                                        <span class="input-group-addon" id="sizing-addon2"><span class="glyphicon glyphicon-lock"></span></span>
                                        <input type="password" class="form-control" placeholder="Mot de passe" name="password" aria-describedby="sizing-addon2">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <button type="submit" name="submit" value="submit"class="btn btn-success btn-block">
                                        Connexion
                                    </button>
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="../fragments/end.jsp" />
    </body>
</html>