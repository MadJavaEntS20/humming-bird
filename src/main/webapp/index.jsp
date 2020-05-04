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
            <div class="map" id="map"></div>
            <span id="info"></span>
            <div class="time-buttons">
                <h5 id="time"></h5>
                <div role="group my-4" aria-label="Animation controls">
                    <button class="btn btn-primary" id="backward" type="button"><svg class="bi bi-chevron-bar-left" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M11.854 3.646a.5.5 0 010 .708L8.207 8l3.647 3.646a.5.5 0 01-.708.708l-4-4a.5.5 0 010-.708l4-4a.5.5 0 01.708 0zM4.5 1a.5.5 0 00-.5.5v13a.5.5 0 001 0v-13a.5.5 0 00-.5-.5z" clip-rule="evenodd"/>
                    </svg></button>

                    <button class="btn btn-success" id="play" type="button">
                        <svg class="bi bi-chevron-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L10.293 8 4.646 2.354a.5.5 0 010-.708z" clip-rule="evenodd"/>
                        </svg>
                    </button>
                    <button class="btn btn-secondary" id="pause" type="button">
                        <svg class="bi bi-pause" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M6 3.5a.5.5 0 01.5.5v8a.5.5 0 01-1 0V4a.5.5 0 01.5-.5zm4 0a.5.5 0 01.5.5v8a.5.5 0 01-1 0V4a.5.5 0 01.5-.5z" clip-rule="evenodd"/>
                        </svg>
                    </button>
                    <button class="btn btn-primary" id="forward" type="button">
                        <svg class="bi bi-chevron-bar-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M4.146 3.646a.5.5 0 000 .708L7.793 8l-3.647 3.646a.5.5 0 00.708.708l4-4a.5.5 0 000-.708l-4-4a.5.5 0 00-.708 0zM11.5 1a.5.5 0 01.5.5v13a.5.5 0 01-1 0v-13a.5.5 0 01.5-.5z" clip-rule="evenodd"/>
                        </svg></button>

                    <button class="btn btn-info" id="reset" type="button">Reset</button>
                </div>
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
