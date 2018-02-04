<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-success">
    <div class="panel-heading">
        <i class="fa fa-first-order" aria-hidden="true"></i> Securité
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-11">
                Le complexe est protégé numériquement grâce à l'intelligence artificielle. Chaque niveau de sécurité est verrouillé par un mot de passe.
            </div>
        </div>
        <div class="list-group">
            <a id="lienChambre" class="list-group-item list-group-item-success">
                <div class="row">
                    <div class="col-sm-11">
                        Chambre d'hospitalisation
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" id="btnChambre" data-toggle="modal" data-target="#chambreM">
                            <i class="fa fa-lock" id="icoChambre" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            <a href="#" class="list-group-item">
                <div class="row">
                    <div class="col-sm-11">
                        Cabinet médical
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            <a href="#" class="list-group-item">
                <div class="row">
                    <div class="col-sm-11">
                        Pharmacie
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            <a href="#" class="list-group-item">
                <div class="row">
                    <div class="col-sm-11">
                        Local serveur
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
            <a href="#" class="list-group-item">
                <div class="row">
                    <div class="col-sm-11">
                        Destruction du complexe
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>


<div class="modal fade" id="chambreM">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Protection chambre d'hospitalisation
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">
                        <form name="codeChambre" id="formChambre">
                            
                            <div class="row">
                                <div class="col-xs-2"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre1" name="codeChambre1" maxlength="1" onKeyUp="next(this, 'codeChambre2', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre2" name="codeChambre2" maxlength="1" onKeyUp="next(this, 'codeChambre3', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre3" name="codeChambre3" maxlength="1" onKeyUp="next(this, 'codeChambre4', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-2"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre4" name="codeChambre4" maxlength="1" onKeyUp="next(this, 'codeChambre5', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre5" name="codeChambre5" maxlength="1" onKeyUp="next(this, 'codeChambre6', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="codeChambre6" name="codeChambre6" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-2"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="row">
                    <div class="col-sm-2">
                        <button class="btn btn-block btn-success" data-dismiss="modal">Annuler</button>
                    </div>
                    <div class="col-sm-8"></div>
                    <div class="col-sm-2">
                        <button class="btn btn-block btn-success" onClick="validateM1()">Valider</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    
    function validateM1(){
        var v1 = $("#codeChambre1").val();
        var v2 = $("#codeChambre2").val();
        var v3 = $("#codeChambre3").val();
        var v4 = $("#codeChambre4").val();
        var v5 = $("#codeChambre5").val();
        var v6 = $("#codeChambre6").val();
        var password = "echec";
        if(v1 == 1 && v2 == 1 && v3 == 1 && v4 == 1 && v5==1 && v6==1){
            password = "validé";
            alert(password);
            $("#chambreM").modal('hide');
            $("#lienChambre").removeClass("list-group-item-success");
            $("#btnChambre").removeClass("btn-success");
            $("#icoChambre").removeClass("fa-lock");
            
            $("#lienChambre").addClass("list-group-item-danger");
            $("#btnChambre").addClass("btn-danger disabled");
            $("#icoChambre").addClass("fa-unlock");
        }else{
            alert(password);
            $("#chambreM").modal('hide');
        }
    }
    
    function next(enCours, suivant, limite)
    {
        if (enCours.value.length == limite)
            document.codeChambre[suivant].focus();
    }
</script>