<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="row">
                <i class="fa fa-file-o" aria-hidden="true"></i> CR de Biologie
            </div>
        </div>
        <div class="panel-body">
            <div class="row">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_patient">Patient</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_document">Document</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_confidentialite">Confidentialité</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_acte">Acte</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_auteur">Auteur</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_rencontre">Rencontre</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_prescripteur">Prescripteur</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_approbateurs">Approbateur(s)</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_signataire">Signataire</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_structure">Structure</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_references">Références</a>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="tab" href="#menu_resultats">Résultats</a>
                    </li>
                </ul>
            </div>



            <div class="tab-content">
                <div class="tab-pane fade in" id="menu_patient">
                    <jsp:include page="./patient.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_document">
                    <jsp:include page="./document.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_confidentialite">
                    <jsp:include page="./confidentialite.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_acte">
                    <jsp:include page="./acte.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_auteur">
                    <jsp:include page="./auteur.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_rencontre">
                    <jsp:include page="./rencontre.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_prescripteur">
                    <jsp:include page="./prescripteur.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_approbateurs">
                    <jsp:include page="./approbateurs.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_signataire">
                    <jsp:include page="./signataire.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_structure">
                    <jsp:include page="./structure.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_references">
                    <jsp:include page="./references.jsp" />
                </div>
                <div class="tab-pane fade" id="menu_resultats">
                    <jsp:include page="./resultats.jsp" />
                </div>
            </div>
        </div>        
    </div>
</div>