<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-12">Session</div>
        </div>       
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-xs-10">
                Demarrer la session
            </div>
            <div class="col-xs-2">
                <a href="${contextPath}?launch" class="btn btn-success btn-xs" id="btn-launch" ><span class="glyphicon glyphicon-play-circle"></span></a>
            </div>
        </div>
        <div class="row">DEBUT : ${debut}</div>
        <div class="row">FIN : ${fin}</div>
    </div>
</div>