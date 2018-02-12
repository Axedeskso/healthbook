<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="modal fade" id="pharmaM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Pharmacie
            </div>
            <form:form action="${contextPath}/securite/pharmacie" name="codeP" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer le code pour déverouiller l'accès à la pharmacie</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-4"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie1" name="codeP1" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);" onKeyUp="nextP(this, 'codeP2', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie2" name="codeP2" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);" onKeyUp="nextP(this, 'codeP3', 1)" >
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie3" name="codeP3" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);" onKeyUp="nextP(this, 'codeP4', 1)" >
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie4" name="codeP4" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);" onKeyUp="nextP(this, 'codeP5', 1)" >
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codePharmacie5" name="codeP5" maxlength="1" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);">
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
    function nextP(enCours, suivant, limite)
    {
        if (enCours.value.length == limite)
            document.codeP[suivant].focus();
    }
</script>
