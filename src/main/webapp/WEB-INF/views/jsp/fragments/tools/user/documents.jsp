<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<a href="${contextPath}/documents">
<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-12">
                <i class="fa fa-list" aria-hidden="true"></i> Documents médicaux
            </div>
        </div>       
    </div>
</div></a>
