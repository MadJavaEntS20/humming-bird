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
            <a class="btn btn-primary" href="addSighting.jsp">Add Sighting</a>
            <div id="map" class="map"></div>
            <span id="info"></span>

            <div id="time"></div>
            <div role="group" aria-label="Animation controls">
                <button class="btn btn-success" id="play" type="button">
                    <svg class="bi bi-play-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path d="M11.596 8.697l-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 010 1.393z"/>
                    </svg>
                </button>
                <button class="btn btn-secondary" id="pause" type="button">
                    <svg class="bi bi-pause-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.5 3.5A1.5 1.5 0 017 5v6a1.5 1.5 0 01-3 0V5a1.5 1.5 0 011.5-1.5zm5 0A1.5 1.5 0 0112 5v6a1.5 1.5 0 01-3 0V5a1.5 1.5 0 011.5-1.5z"/>
                    </svg>
                </button>
                <button class="btn btn-primary" id="reset" type="button">Reset</button>
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
