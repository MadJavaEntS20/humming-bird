<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h3>${userAddMessage}</h3>
            <c:remove var="userAddMessage"/>

            <a href="login.jsp">Log in</a>

            <c:if test="{pageContext.request.isUserInRole('admin')}">
                <p>logged in as admin</p>
            </c:if>

            <a href="addSighting.jsp">Add Sighting</a>
            <h2>Map</h2>

            <div id="map" class="map"></div>

            <script type="text/javascript">
                let sightingsObject = ${sightings};
            </script>
        </div>
    </div>
</div>
<script src="JS/mainMap.js"></script>
<%@include file="footer.jsp"%>
