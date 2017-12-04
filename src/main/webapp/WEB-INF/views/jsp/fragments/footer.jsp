<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<footer class="navbar-inverse navbar-fixed-bottom footer hidden-lg">
    <div class="container-fluid" >
        <div class="row ">
            <a class="text-secondary" href="${contextPath}/profil">
                <div class="col-xs-3 center">
                    <div class="row"><i class="fa fa-user-circle-o" aria-hidden="true"></i></div>
                    <div class="row">Profil</div>
                </div>
            </a>
            <a class="text-secondary" href="${contextPath}/securite">
                <div class="col-xs-3 center">
                    <div class="row"><i class="fa fa-first-order" aria-hidden="true"></i></div>
                    <div class="row">Chambre</div>
                </div>
            </a>
            <a class="text-secondary" href="${contextPath}/documents">
                <div class="col-xs-3 center">
                    <div class="row"><i class="fa fa-list" aria-hidden="true"></i></div>
                    <div class="row">Médical</div>
                </div>
            </a>
            <a class="text-secondary " type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="col-xs-3 center">
                    <div class="dropup">
                        <div class="row"><i class="fa fa-bars" aria-hidden="true"></i></div>
                        <div class="row">Menu</div>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <li id="btn-daynight"><a href="#"><div class="row">Mode Nuit <span class="glyphicon glyphicon-adjust pull-right"></span></div></a></li>
                            <li><a href="#"><div class="row">Paramètres <span class="glyphicon glyphicon-cog pull-right"></span></div</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${contextPath}/login?logout"><div class="row">Déconnexion <span class="glyphicon glyphicon-remove-sign pull-right"></span></div></a></li>
                        </ul>
                    </div>
                </div>
            </a>
        </div>
    </div>
</footer>