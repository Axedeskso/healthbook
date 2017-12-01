<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-3">
                <c:if test="${pageContext.request.userPrincipal.name=="test"}">
                    <img src="<c:url value="/resources/core/img/users/default.png" />" class="img-circle img-responsive" />
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name=="medecin"}">
                    <img src="<c:url value="/resources/core/img/users/user1.jpg" />" class="img-circle img-responsive"/>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name=="pharma"}">
                    <img src="<c:url value="/resources/core/img/users/user66.jpg" />" class="img-circle img-responsive"/>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name=="inta"}"> 
                   <img src="<c:url value="/resources/core/img/users/ia.png" />" class="img-circle img-responsive"/>
                </c:if>
            </div>
            <div class="col-sm-9">
                <div class="row">
                    <div class="col-sm-12">
                        <c:if test="${pageContext.request.userPrincipal.name=="test"}">Utilisateur</c:if>
                        <c:if test="${pageContext.request.userPrincipal.name=="medecin"}">Dr. Hervé PINGAUD</c:if>
                        <c:if test="${pageContext.request.userPrincipal.name=="pharma"}">Ph. Véronique L'HOTE</c:if>
                        <c:if test="${pageContext.request.userPrincipal.name=="inta"}">Me. concepteur</c:if>
                    </div>
                </div>
            </div>
        </div>       
    </div>
</div>
