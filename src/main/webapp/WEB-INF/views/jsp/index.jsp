<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <jsp:include page="./fragments/header.jsp" />

    <sec:authorize access="hasRole('ROLE_IA')">
        <body class="fond_ia">
            <audio autoplay loop volume="0.5">
                <source src="http://192.168.10.2:8080/audio/theme.wav" type="audio/wav">
                Erreur
            </audio>
            <video id="video_ia" width="100%" autoplay loop>
                <source id="source_ia" src="http://192.168.10.2:8080/videos/BP1.mp4" type='video/mp4' />
            </video>
            <input type="hidden" id="target" value='${annee}'/>
            <div class="row" id="footer_ia">
                <div class="col-lg-12" id="countdown">
                    <div class="col-xs-12"></div>
                    <label><span id="countdown_hour">00</span>:<span id="countdown_min" >00</span>:<span id="countdown_sec" >00</span></label>
                </div>
            </div>
            <jsp:include page="./fragments/end.jsp" />
        </body>
    </sec:authorize>
    <sec:authorize access="hasRole('ROLE_USER') || hasRole('ROLE_ADMIN')">
        <body>
            <jsp:include page="./fragments/navbar/nav_user.jsp" />
            <div class="container-fluid" id="page-content-wrapper">
                <div class="page-content">
                    <div class="row">
                        <div class="col-lg-2 hidden-sm">
                            <jsp:include page="./fragments/navbar/sidebar_left.jsp" />
                        </div>
                        <div class="col-lg-8 col-sm-12">
                            <sec:authorize access="hasRole('ROLE_USER')">
                                <jsp:include page="./fragments/actualite.jsp" />
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <jsp:include page="./fragments/admin/joueurs.jsp" />
                            </sec:authorize>
                        </div>
                        <div class="col-lg-2 hidden-sm">
                            <jsp:include page="./fragments/navbar/sidebar_right.jsp" />
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="./fragments/footer.jsp" />
            <jsp:include page="./fragments/end.jsp" />
        </body>
    </sec:authorize>
</html>