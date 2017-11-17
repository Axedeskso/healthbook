<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-12">
                <i class="fa fa-sticky-note" aria-hidden="true"></i> Bloc-note
            </div>
        </div>       
    </div>

    <div class="list-group">
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-12">
                    D 0218944561
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-xs-12">
                    E 3456789445
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-12">
                    M 8411126778
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-12">
                    O 5486107895
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-12">
                    N 5473594610
                </div>
            </div>
        </a>
        <a href="#" class="list-group-item">
            <div class="row">
                <div class="col-sm-12">
                    S 1547893865
                </div>
            </div>
        </a>
    </div>
    <div class="panel-body">
        <button class="btn btn-block btn-success " data-toggle="modal" data-target="#bc">Ajouter une note</button>
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