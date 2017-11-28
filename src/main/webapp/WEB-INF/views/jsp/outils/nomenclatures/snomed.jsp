<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../../fragments/header.jsp" />
    <body>
        <jsp:include page="../../fragments/navbar/user/nav_user.jsp" />
        <div class="container-fluid" id="page-content-wrapper" style="padding-top: 4%;">           
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-2">
                        <jsp:include page="../../fragments/tools/user/profil_user.jsp" />
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="../../fragments/tools/metier/blocnote_user.jsp" />
                        </sec:authorize>
                    </div>
                    <div class="col-xs-8">
                        <iframe src="http://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=en-edition&release=v20170731&server=http://browser.ihtsdotools.org/api/v1/snomed&langRefset=900000000000509007" width="980px" height="900px"></iframe>
                    </div>
                    <div class="col-xs-2">
                        <sec:authorize access="hasRole('ROLE_USER')">
                            <jsp:include page="../../fragments/tools/metier/tools_user.jsp" />
                        </sec:authorize>
                    </div>
                </div>
            </div>    
        </div>
        <jsp:include page="../../fragments/footer.jsp" />
    </body>
</html>