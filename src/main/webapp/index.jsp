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
            <a href="addSighting.jsp">Add Sighting</a>
            <div id="map" class="map"></div>
            <div id="time"></div>
            <div role="group" aria-label="Animation controls">
                <button id="play" type="button">Play</button>
                <button id="pause" type="button">Pause</button>
                <button id="reset" type="button">Reset</button>
                <span id="info"></span>
            </div>
            <script type="text/javascript">
                let sightingsObject = ${sightings};
                let mapId = document.querySelector('.map').id;
            </script>
        </div>
    </div>
</div>
<script src="JS/mainMap.js"></script>
<%@include file="footer.jsp"%>
