<%@page import="com.fromentin.security.HealthbookUser"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <jsp:include page="./fragments/header.jsp" />
    <body>
        <jsp:include page="./fragments/navbar/nav_user.jsp" />
        <div class="container-fluid" id="page-content-wrapper" style="padding-top: 4%;">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-2">
                        <jsp:include page="./fragments/navbar/sidebar_left.jsp" />
                    </div>
                    <div class="col-xs-8">
                        <div class="row">
                            <div class="col-xs-8">
                                test
                            </div>
                            <div class="col-xs-4">
                                <div class="wrapper">
                                    <input type="checkbox" name="toggle" id="toggle">
                                    <label for="toggle"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <jsp:include page="./fragments/navbar/sidebar_right.jsp" />
                    </div>
                </div>
            </div>    
        </div>
        <jsp:include page="./fragments/footer.jsp" />
    </body>
</html>