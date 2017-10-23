$(document).ready(function () {
    $('#btn-daynight').click(function () {
        if ($('body').hasClass('night')) {
            $('body').removeClass('night');
            $('.panel-body').removeClass('night');
            $('.img-thumbnail').removeClass('night');
            $('.card').removeClass('night-card');
            $('.list-group-item').removeClass('night');
            $('.modal-body').removeClass('night');
            $('.modal-footer').removeClass('night');
        } else {
            $('body').addClass('night');
            $('.panel-body').addClass('night');
            $('.img-thumbnail').addClass('night');
            $('.card').addClass('night-card');
            $('.list-group-item').addClass('night');
            $('.modal-body').addClass('night');
            $('.modal-footer').addClass('night');
        }
    });
});