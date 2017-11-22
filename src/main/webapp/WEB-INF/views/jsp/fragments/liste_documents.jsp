<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="row">
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="row">
                <i class="fa fa-list" aria-hidden="true"></i> Documents médicaux
            </div>
        </div>
        <div class="list-group">
            <a href="${contextPath}/documents/1" class="list-group-item">
                <div class="row">
                    <div class="col-sm-12">
                        CR de Biologie
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>