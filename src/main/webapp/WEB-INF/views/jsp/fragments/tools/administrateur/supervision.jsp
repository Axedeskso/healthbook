<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-12">
                <i class="fa fa-bomb" aria-hidden="true"></i> Supervision
            </div>
        </div>       
    </div>

    <div class="list-group">
        <a href="${contextPath}/?errorp" class="list-group-item">
            <div class="row">
                <div class="col-xs-12">Objet
                </div>
            </div>
        </a>
        <a href="${contextPath}/?repi" class="list-group-item">
            <div class="row">
                <div class="col-xs-12">Réponse
                </div>
            </div>
        </a> 
    </div>
</div>