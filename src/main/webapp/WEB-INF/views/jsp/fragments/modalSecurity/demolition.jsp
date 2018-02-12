<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="modal fade" id="demolitionM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Sécurité - Local Serveur
            </div>
            <form:form action="${contextPath}/securite/demolition" name="codePharmacie" id="formChambre">
                <div class="modal-body">
                    <div class="row">Entrer la commande pour désactiver la demolition</div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="input-form">
                                <input type="text" class="form-control" id="codeD1" name="codeD1" maxlength="84">
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
