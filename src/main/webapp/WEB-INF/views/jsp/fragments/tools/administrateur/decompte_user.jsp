<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-10">
                <i class="fa fa-bomb" aria-hidden="true"></i> Démolition
            </div>
            <div class="col-sm-2">
                <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#bomb">
                    <i class="fa fa-stop-circle" aria-hidden="true"></i>
                </button>
            </div>
        </div>       
    </div>

    <div class="list-group">
        <div href="#" class="list-group-item">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row">
                        <div id="countdown">
                            <div class="col-xs-12"></div>
                            <label><span id="countdown_hour">00</span>:<span id="countdown_min" >00</span>:<span id="countdown_sec" >00</span></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>      
    </div>
</div>

<div class="modal fade" id="bomb">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <i class="fa fa-bomb" aria-hidden="true"></i> Démolition
            </div>
            <div class="modal-body">
                <div class="row">
                    Veuillez entrer le code de sécurité pour désactiver la bombe
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <form name="code">
                        <div class="row">
                            <div class="col-xs-4"></div>
                            <div class="col-xs-1">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="code1" maxlength="1" onKeyUp="suivant(this, 'code2', 1)">
                                </div>
                            </div>
                            <div class="col-xs-1">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="code2" maxlength="1" onKeyUp="suivant(this, 'code3', 1)">
                                </div>
                            </div>
                            <div class="col-xs-1">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="code3" maxlength="1" onKeyUp="suivant(this, 'code4', 1)">
                                </div>
                            </div>
                            <div class="col-xs-1">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="code4" maxlength="1">
                                </div>
                            </div>
                            <div class="col-xs-4"></div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>


<script>
    function suivant(enCours, suivant, limite)
    {
        if (enCours.value.length == limite)
            document.code[suivant].focus();
    }
</script>
