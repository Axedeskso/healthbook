<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-12">
                Clientèle
            </div>
        </div>       
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-10">
                Voir les patients
            </div>
            <div class="col-sm-2">
                <a href="${contextPath}/clients">
                <button class="btn btn-block btn-success ">--></button>
                </a>
            </div>
        </div>
    </div>
</div>