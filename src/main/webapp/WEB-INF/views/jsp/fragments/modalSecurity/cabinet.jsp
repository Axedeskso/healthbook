<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="modal fade" id="cabinetM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Cabinet médicale
            </div>
            <form:form action="${contextPath}/securite/cabinet" name="codeCb" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer le code pour déverouiller la porte du cabinet médicale</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-4"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre1" name="codeCb1" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);" onKeyUp="nextCb(this, 'codeCb2', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre2" name="codeCb2" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);" onKeyUp="nextCb(this, 'codeCb3', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre3" name="codeCb3" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);" onKeyUp="nextCb(this, 'codeCb4', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre4" name="codeCb4" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);">
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
    function nextCb(enCours, suivant, limite)
    {
        if (enCours.value.length == limite)
            document.codeCb[suivant].focus();
    }
</script>
