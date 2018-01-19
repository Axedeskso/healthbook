$(document).ready(function () {
    $('#btn-daynight').click(function () {
        if ($('body').hasClass('night')) {
            $('body').removeClass('night');
            $('.panel-body').removeClass('night');
            $('.panel-footer').removeClass('night');
            $('.card-title').removeClass('night');
            $('.img-thumbnail').removeClass('night');
            $('.card').removeClass('night-card');
            $('.list-group-item').removeClass('night');
            $('.modal-body').removeClass('night');
            $('.modal-footer').removeClass('night');
            
            $('.test-night').addClass('hidden');
        } else {
            $('body').addClass('night');
            $('.panel-body').addClass('night');
            $('.panel-footer').addClass('night');
            $('.card-title').addClass('night');
            $('.img-thumbnail').addClass('night');
            $('.card').addClass('night-card');
            $('.list-group-item').addClass('night');
            $('.modal-body').addClass('night');
            $('.modal-footer').addClass('night');
            
            $('.test-night').removeClass('hidden');
        }
    });    
});
//COMPTE A REBOURS
$(document).ready(function () {
    countdownManager = {
        targetTime: new Date('2018-01-12 16:40:00'),
        displayElement: {
            day: null,
            hour: null,
            min: null,
            sec: null
        },
        init: function () {
            this.displayElement.day = jQuery('#countdown_day');
            this.displayElement.hour = jQuery('#countdown_hour');
            this.displayElement.min = jQuery('#countdown_min');
            this.displayElement.sec = jQuery('#countdown_sec');
            this.tick();
            window.setInterval("countdownManager.tick();", 1000); // Ticks suivant, répété toutes les secondes (1000 ms)
        },
        tick: function () {
            var timeNow = new Date();
            if (timeNow > this.targetTime) {
                timeNow = this.targetTime;
            }
            var diff = this.dateDiff(timeNow, this.targetTime);
//            this.displayElement.day.text(diff.day);
            this.displayElement.hour.text(diff.hour);
            this.displayElement.min.text(diff.min);
            this.displayElement.sec.text(diff.sec);
        },
        dateDiff: function (date1, date2) {
            var diff = {};
            var tmp = date2 - date1;
            tmp = Math.floor(tmp / 1000);
            diff.sec = tmp % 60;
            tmp = Math.floor((tmp - diff.sec) / 60);
            diff.min = tmp % 60;
            tmp = Math.floor((tmp - diff.min) / 60);
            diff.hour = tmp % 24;
            return diff;
        }
    };
    jQuery(function ($) {
        countdownManager.init();
    });
});