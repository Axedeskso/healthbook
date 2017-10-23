<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../fragments/header.jsp" />
    <body>
        <jsp:include page="../fragments/navbar/user/nav_user.jsp" />
        <div class="container-fluid" id="page-content-wrapper">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-2">
                        <jsp:include page="../fragments/tools/user/profil_user.jsp" />
                    </div>
                    <div class="col-xs-8">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-sm-12">ERREUR 403</div>
                                </div>       
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-12">
                                        Vos droits d'utilisateurs ne vous permettent pas d'accéder à ce contenu.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-2">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../fragments/footer.jsp" />
</body>
</html>