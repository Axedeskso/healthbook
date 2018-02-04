<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<a href="${contextPath}/profil">
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="row">
                <div class="col-sm-3">
                    <img src="<c:url value="/resources/core/img/users/default.png" />" class="img-circle img-responsive" />
                </div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-12">
                            Utilisateur
                        </div>
                    </div>
                </div>
            </div>       
        </div>
    </div>
</a>