<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<a href="${contextPath}/securite">
    <div class="panel panel-success test-night hidden"  >
        <div class="panel-heading">
            <div class="row">
                <div class="col-sm-12">
                    <i class="fa fa-first-order" aria-hidden="true"></i> Securité
                </div>
            </div>       
        </div>
    </div>
</a>
