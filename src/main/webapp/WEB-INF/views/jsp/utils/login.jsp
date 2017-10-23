<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../fragments/header.jsp" />
    </head>
    <body onload='document.loginForm.username.focus();'>
        <div class="login-clean">
            <form name="loginForm" action="${loginUrl}" method='POST'>
                <div class="form-group">
                    <div class="row">
                        <div style="text-align: center"><h1><span class="label label-success">Healthbook</span></h1></div>
                    </div>
                </div>
                <c:if test="${not empty error}">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12" style="text-align:center; color:#28a745">
                                <div class="error">${error}</div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${not empty msg}">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12" style="text-align:center; color:#28a745">
                                <div class="msg">${msg}</div>
                            </div>
                        </div>
                    </div>

                </c:if>

                <div class="form-group">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2"><span class="glyphicon glyphicon-user"></span></span>
                                <input type="text" class="form-control" placeholder="Nom d'utilisateur" name="username" aria-describedby="sizing-addon2">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" class="form-control" placeholder="Mot de passe" name="password" aria-describedby="sizing-addon2">
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <div style="text-align:center;">
                                    <button type="submit" name="submit" value="submit"class="btn btn-success">
                                        Connexion
                                    </button>
                                </div>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}" />
                        </div>
                    </div>
                </div>
            </form>

        </div>
        <jsp:include page="../fragments/footer.jsp" />
    </body>
</html>