<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="panel panel-success">
    <div class="panel-heading">
        <i class="fa fa-first-order" aria-hidden="true"></i> Securité
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-11">
                Le complexe est protégé numériquement grâce à l'intelligence artificielle. Chaque niveau de sécurité est verrouillé par un mot de passe.
            </div>
        </div>
        <div class="list-group">
            <a id="lienChambre" class="list-group-item ${fondC}">
                <div class="row">
                    <div class="col-sm-11">
                        Chambres d'hospitalisations ${codeC}
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#chambreM" ${btnC}>
                            <i class="fa fa-lock" id="icoChambre" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            <c:if test = "${!secC}">
            <a href="#" class="list-group-item  ${fondP}">
                <div class="row">
                    <div class="col-sm-11">
                        Pharmacie ${codeP}
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#pharmaM" ${btnP}>
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            </c:if>
            <c:if test = "${!secP}">
            <a href="#" class="list-group-item  ${fondCb}">
                <div class="row">
                    <div class="col-sm-11">
                        Cabinet médical ${codeCb}
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#cabinetM" ${btnCb}>
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            </c:if>
            <c:if test = "${!secCb}">
            <a href="#" class="list-group-item  ${fondLS}">
                <div class="row">
                    <div class="col-sm-11">
                        Local serveur ${codeLS}
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#localM" ${btnLS}>
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            </c:if>
            <c:if test = "${!secLS}">
            <a id="lienChambre" class="list-group-item  ${fondS}">
                <div class="row">
                    <div class="col-sm-11">
                        Accès serveur ${codeS}
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#serverM" ${btnS}>
                            <i class="fa fa-lock" id="icoChambre" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            </c:if>
            <c:if test = "${!secS}">
            <a href="#" class="list-group-item ${fondD}" >
                <div class="row">
                    <div class="col-sm-11">
                        Démolition du complexe ${codeD}
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#demolitionM" ${btnD}>
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            </c:if>
        </div>
    </div>
</div>

<jsp:include page="./modalSecurity/chambre.jsp" />
<jsp:include page="./modalSecurity/pharmacie.jsp" />
<jsp:include page="./modalSecurity/cabinet.jsp" />
<jsp:include page="./modalSecurity/localserveur.jsp" />
<jsp:include page="./modalSecurity/serveur.jsp" />
<jsp:include page="./modalSecurity/demolition.jsp" />