<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="modal fade" id="serverM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Local Serveur
            </div>
            <form:form action="${contextPath}/securite/serveur" name="codeS" id="formServer">
                <div class="modal-body">
                    <div class="row">Entrer le code pour déverouiller l'accès au serveur</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-3"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeS1" name="codeS1" maxlength="1" onKeyUp="nextS(this, 'codeS2', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeS2" name="codeS2" maxlength="1" onKeyUp="nextS(this, 'codeS3', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeS3" name="codeS3" maxlength="1" onKeyUp="nextS(this, 'codeS4', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeS4" name="codeS4" maxlength="1" onKeyUp="nextS(this, 'codeS5', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeS5" name="codeS5" maxlength="1" onKeyUp="nextS(this, 'codeS6', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeS6" name="codeS6" maxlength="1" onKeyUp="nextS(this, 'codeS7', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeS7" name="codeS7" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-2"></div>
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
    function nextS(enCours, suivant, limite)
    {
        if (enCours.value.length == limite)
            document.codeS[suivant].focus();
    }
</script>

