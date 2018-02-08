var timeNow = new Date();
var cible = $('#target').val();

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

var fin = false;
function video(hour, min, sec) {
    var videod = document.getElementById('video_ia');
    var source = document.getElementById('source_ia');
    if (hour == 1 && min == 4 && sec == 9) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V1.mp4');
        videod.load();
        videod.play();
        //RETOUR VIDEO SANS RIEN APRES 19 SECONDES
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP1.mp4');
            videod.load();
            videod.play();
        },19000);
    } else if (hour == 1 && min == 0 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V2.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP1.mp4');
            videod.load();
            videod.play();
        }, 8000);
    } else if (hour == 0 && min == 45 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V3.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP1.mp4');
            videod.load();
            videod.play();
        }, 8000);
    } else if (hour == 0 && min == 30 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V4.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP1.mp4');
            videod.load();
            videod.play();
        }, 8500);
    } else if (hour == 0 && min == 15 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V5.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP2.mp4');
            videod.load();
            videod.play();
        }, 8500);
    } else if (hour == 0 && min == 10 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V6.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP2.mp4');
            videod.load();
            videod.play();
        }, 8500);
    } else if (hour == 0 && min == 5 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V7.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP2.mp4');
            videod.load();
            videod.play();
        }, 8000);
    } else if (hour == 0 && min == 4 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V8.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP2.mp4');
            videod.load();
            videod.play();
        }, 7500);
    } else if (hour == 0 && min == 3 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V9.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP2.mp4');
            videod.load();
            videod.play();
        }, 7500);
    } else if (hour == 0 && min == 2 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V10.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP2.mp4');
            videod.load();
            videod.play();
        }, 7500);
    } else if (hour == 0 && min == 1 && sec == 4) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V11.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP3.mp4');
            videod.load();
            videod.play();
        }, 7500);
    } else if (hour == 0 && min == 0 && sec == 16) {
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V12.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP3.mp4');
            videod.load();
            videod.play();
        }, 15500);
    } else if (hour == 0 && min == 0 && sec == 0 && !fin) {
        fin = true;
        videod.pause();
        source.setAttribute('src', 'http://192.168.10.2:8080/videos/V13.mp4');
        videod.load();
        videod.play();
        setTimeout(function () {
            videod.pause();
            source.setAttribute('src', 'http://192.168.10.2:8080/videos/BP3.mp4');
            videod.load();
            videod.play();
        }, 4500);
    }
};

//COMPTE A REBOURS
$(document).ready(function () {
    countdownManager = {
        targetTime: new Date(cible),
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
            this.displayElement.hour.text(diff.hour);
            this.displayElement.min.text(diff.min);
            this.displayElement.sec.text(diff.sec);
            video(diff.hour, diff.min, diff.sec);
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

