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
            <a href="#" class="list-group-item list-group-item-success">
                <div class="row">
                    <div class="col-sm-11">
                        Chambre d'hospitalisation
                    </div>
                    <div class="col-xs-1">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#chambreM">
                            <i class="fa fa-lock" aria-hidden="true"></i>
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
    <div class="modal-dialog modal-lg" role="document">
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
                                        <input type="text" class="form-control" name="codeChambre1" maxlength="1" onKeyUp="next(this, 'codeChambre2', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="codeChambre2" maxlength="1" onKeyUp="next(this, 'codeChambre3', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="codeChambre3" maxlength="1" onKeyUp="next(this, 'codeChambre4', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-2"></div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="codeChambre4" maxlength="1" onKeyUp="next(this, 'codeChambre5', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="codeChambre5" maxlength="1" onKeyUp="next(this, 'codeChambre6', 1)">
                                    </div>
                                </div>
                                <div class="col-xs-1">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="codeChambre6" maxlength="1">
                                    </div>
                                </div>
                                <div class="col-xs-2"></div>
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
    function next(enCours, suivant, limite)
    {
        if (enCours.value.length == limite)
            document.codeChambre[suivant].focus();
    }
</script>