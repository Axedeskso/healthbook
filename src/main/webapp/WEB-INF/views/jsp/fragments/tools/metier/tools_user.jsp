<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="panel panel-success">
    <div class="panel-heading"><i class="fa fa-archive" aria-hidden="true"></i> Outils</div>
    <div class="list-group">
        <a href="${contextPath}/tools/nomenclatures"class="list-group-item">
            <div class="row">
                <div class="col-xs-10">
                    Nomenclature
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="${contextPath}/tools/catalogues" class="list-group-item">
            <div class="row">
                <div class="col-xs-10">
                    Catalogue
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="${contextPath}/tools/codifications"  class="list-group-item">
            <div class="row">
                <div class="col-xs-10">
                    Codification
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="${contextPath}/tools/classifications" class="list-group-item">
            <div class="row">
                <div class="col-xs-10">
                    Classification 
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                           <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="${contextPath}/tools/dictionnaires" class="list-group-item">
            <div class="row">
                <div class="col-xs-10">
                    Dictionnaire
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="${contextPath}/tools/thesaurus" class="list-group-item">
            <div class="row">
                <div class="col-xs-10">
                    Thesaurus 
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
            
    </div>
</div>