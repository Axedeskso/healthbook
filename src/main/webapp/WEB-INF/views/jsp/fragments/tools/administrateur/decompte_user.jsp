<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-12">
                <i class="fa fa-bomb" aria-hidden="true"></i> Démolition
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
                    <div class="row">
                        <video id="video_ia" width="100%" autoplay loop>
                            <source id="source_ia" src="http://192.168.10.2:8080/videos/BP1.mp4" type='video/mp4' />
                        </video>
                    </div>
                </div>
            </div>
            <input type="hidden" id="target" value='${annee}'/>
        </div>      
    </div>
</div>