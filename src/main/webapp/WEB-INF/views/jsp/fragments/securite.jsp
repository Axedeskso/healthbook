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
                        Chambres d'hospitalisations <span class="badge">${codeC}</span>
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#chambreM" ${btnC}>
                            <i class="fa fa-lock" id="icoChambre" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            <c:if test = "${codeC != 'verrouillées'}">
                <a href="#" class="list-group-item">
                    <div class="row">
                        <div class="col-sm-11">
                            Pharmacie <span class="badge">${codeP}</span>
                        </div>
                        <div class="col-xs-1">
                            <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#pharmaM">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </a>
            </c:if>
            <c:if test = "${codeCP != 'verrouillée'}">
                <a href="#" class="list-group-item">
                    <div class="row">
                        <div class="col-sm-11">
                            Cabinet médical <span class="badge">${codeCb}</span>
                        </div>
                        <div class="col-xs-1">
                            <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#cabinetM">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </a>
            </c:if>
            <c:if test = "${codeCb != 'verrouillé'}">
                <a href="#" class="list-group-item">
                    <div class="row">
                        <div class="col-sm-11">
                            Local serveur <span class="badge">${codeLS}</span>
                        </div>
                        <div class="col-xs-1">
                            <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#localM">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </a>
            </c:if>
            <c:if test = "${codeLS != 'verrouillé'}">
                <a id="lienChambre" class="list-group-item">
                    <div class="row">
                        <div class="col-sm-11">
                            Accès serveur <span class="badge">${codeS}</span>
                        </div>
                        <div class="col-xs-1">
                            <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#serverM">
                                <i class="fa fa-lock" id="icoChambre" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </a>
            </c:if>
            <c:if test = "${codeS != 'vérrouillé'}">
                <a href="#" class="list-group-item">
                    <div class="row">
                        <div class="col-sm-11">
                            Démolition du complexe <span class="badge">${codeD}</span>
                        </div>
                        <div class="col-xs-1">
                            <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#demolitionM">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </a>
            </c:if>
        </div>
    </div>
</div>


<div class="modal fade" id="chambreM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Chambre d'hospitalisation
            </div>
            <form:form action="${contextPath}/chambre" name="codeChambre" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer le code du CR d'examen biologique du patient Zéro</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-4"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre1" name="codeChambre1" maxlength="1" onKeyUp="next(this, 'codeChambre2', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre2" name="codeChambre2" maxlength="1" onKeyUp="next(this, 'codeChambre3', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre3" name="codeChambre3" maxlength="1" onKeyUp="next(this, 'codeChambre4', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre4" name="codeChambre4" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-sm-2">
                            <button class="btn btn-block btn-success" data-dismiss="modal">Annuler</button>
                        </div>
                        <div class="col-sm-8"></div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn btn-block btn-success">Valider</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="modal fade" id="pharmaM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Pharmacie
            </div>
            <form:form action="${contextPath}/pharmacie" name="codePharmacie" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer le code pour dévérouiller l'accès à la pharmacie</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-4"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie1" name="codePharmacie1" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie2" name="codePharmacie2" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie3" name="codePharmacie3" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie4" name="codePharmacie4" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie5" name="codePharmacie5" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);">
                                    </div>
                                </div>
                                <div class="col-xs-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-sm-2">
                            <button class="btn btn-block btn-success" data-dismiss="modal">Annuler</button>
                        </div>
                        <div class="col-sm-8"></div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn btn-block btn-success">Valider</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>                    

<div class="modal fade" id="cabinetM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Cabinet médicale
            </div>
            <form:form action="${contextPath}/cabinet" name="codeCabinet" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer le code pour dévérouiller la porte du cabinet médicale</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-4"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre1" name="codeCabinet1" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre2" name="codeCabinet2" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre3" name="codeCabinet3" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre4" name="codeCabinet4" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-sm-2">
                            <button class="btn btn-block btn-success" data-dismiss="modal">Annuler</button>
                        </div>
                        <div class="col-sm-8"></div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn btn-block btn-success">Valider</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="modal fade" id="localM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Local Serveur
            </div>
            <form:form action="http://localhost:8084/healthbook/securite/pharmacie" name="codePharmacie" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer le code pour dévérouiller l'accès au local serveur</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-4"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code1" name="code1" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code2" name="codePharmacie2" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code3" name="code3" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code4" name="code4" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code5" name="code" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-sm-2">
                            <button class="btn btn-block btn-success" data-dismiss="modal">Annuler</button>
                        </div>
                        <div class="col-sm-8"></div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn btn-block btn-success">Valider</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="modal fade" id="serverM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Local Serveur
            </div>
            <form:form action="http://localhost:8084/healthbook/securite/pharmacie" name="codePharmacie" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer le code pour dévérouiller l'accès au local serveur</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-4"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code1" name="code1" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code2" name="codePharmacie2" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code3" name="code3" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code4" name="code4" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code5" name="code" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-sm-2">
                            <button class="btn btn-block btn-success" data-dismiss="modal">Annuler</button>
                        </div>
                        <div class="col-sm-8"></div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn btn-block btn-success">Valider</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="modal fade" id="demolitionM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Local Serveur
            </div>
            <form:form action="http://localhost:8084/healthbook/securite/pharmacie" name="codePharmacie" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer le code pour dévérouiller l'accès au local serveur</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-4"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code1" name="code1" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code2" name="codePharmacie2" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code3" name="code3" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code4" name="code4" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="code5" name="code" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-sm-2">
                            <button class="btn btn-block btn-success" data-dismiss="modal">Annuler</button>
                        </div>
                        <div class="col-sm-8"></div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn btn-block btn-success">Valider</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>


<script>
    function next(enCours, suivant, limite)
    {
        if (enCours.value.length == limite)
            document.codeChambre[suivant].focus();
    }
</script>