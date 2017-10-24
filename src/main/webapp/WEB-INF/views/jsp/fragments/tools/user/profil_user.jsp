<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-3">
                <img src="<c:url value="/resources/core/img/pau.jpg" />" class="img-circle img-responsive">
            </div>
            <div class="col-sm-9">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12">Bonjour <label> ${pageContext.request.userPrincipal.name}</label></div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6"></div>
                    </div>
                </div>
            </div>
        </div>       
    </div>
    <div class="panel-body">
        ${pageContext.request.userPrincipal.authorities}
    </div>
</div>
