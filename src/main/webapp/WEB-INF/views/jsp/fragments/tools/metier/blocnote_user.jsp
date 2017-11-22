<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-10">
                <i class="fa fa-sticky-note" aria-hidden="true"></i> Bloc-note
            </div>
            <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right" data-toggle="modal" data-target="#bc">
                            <i class="fa fa-plus-square" aria-hidden="true"></i>
                        </button>
                </div>
        </div>       
    </div>

    <div class="list-group">
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-10">
                    D 0218944561
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-xs-10">
                    E 3456789445
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-10">
                    M 8411126778
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-10">
                    O 5486107895
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-10">
                    N 5473594610
                </div>
                <div class="col-xs-2">
                        <button class="btn btn-success btn-xs pull-right">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </button>
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-10">
                    S 1547893865
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

<div class="modal fade" id="bc">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Ajouter une note
            </div>
            <div class="modal-body">
                <textarea class="form-control" rows="2"></textarea>
            </div>
            <div class="modal-footer">
                <div class="row">
                    <div class="col-sm-2"><button class="btn btn-success btn-block" data-toggle="modal" data-target="#bc">Fermer</button></div>
                    <div class="col-sm-8"></div>
                    <div class="col-sm-2"><button class="btn btn-success btn-block" data-toggle="modal" data-target="#bc">Ajouter</button></div>
                </div>
            </div>
        </div>
    </div>
</div>