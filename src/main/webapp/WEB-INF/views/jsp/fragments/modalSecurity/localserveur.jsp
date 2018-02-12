<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="modal fade" id="localM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Local Serveur
            </div>
            <form:form action="${contextPath}/securite/localserveur" name="codeLS" id="formLS">
                <div class="modal-body">
                    <div class="row">Entrer le code pour déverouiller l'accès au local serveur</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-3"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeLS1" name="codeLS1" maxlength="1" onKeyUp="nextLS(this, 'codeLS2', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeLS2" name="codeLS2" maxlength="1" onKeyUp="nextLS(this, 'codeLS3', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeLS3" name="codeLS3" maxlength="1" onKeyUp="nextLS(this, 'codeLS4', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeLS4" name="codeLS4" maxlength="1" onKeyUp="nextLS(this, 'codeLS5', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeLS5" name="codeLS5" maxlength="1" onKeyUp="nextLS(this, 'codeLS6', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeLS6" name="codeLS6" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-3"></div>
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
    function nextLS(enCours, suivant, limite)
    {
        if (enCours.value.length == limite)
            document.codeLS[suivant].focus();
    }
</script>
