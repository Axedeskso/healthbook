<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<a href="${contextPath}/profil">
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="row">
                <div class="col-sm-3">
                    <c:if test="${username == 'test'}"><img src="<c:url value="/resources/core/img/users/default.png" />" class="img-circle img-responsive" /></c:if>
                    <c:if test="${username == '1234567890'}"><img src="<c:url value="/resources/core/img/users/user1.jpg" />" class="img-circle img-responsive" /></c:if>
                    <c:if test="${username == 'admin'}"><img src="<c:url value="/resources/core/img/users/default.png" />" class="img-circle img-responsive" /></c:if>
                </div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-12">
                            Bonjour <c:if test="${username == 'test'}"> unknow UNKNOW</c:if>
                            <c:if test="${username == '1234567890'}"> Dr. Hervé PINGAUD</c:if>
                            <c:if test="${username == 'admin'}">Superviseur</c:if>
                        </div>
                    </div>
                </div>
            </div>       
        </div>
    </div>
</a>