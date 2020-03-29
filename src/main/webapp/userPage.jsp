<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h1 class="mt-5">Sightings</h1>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Species</th>
                    <th scope="col">Longitude</th>
                    <th scope="col">Latitude</th>
                    <th scope="col">Date</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="sighting" items="${user.sighting}" varStatus="loop">
                            <tr>
                                <td>${sighting.species}</td>
                                <td>${sighting.longitude}</td>
                                <td>${sighting.latitude}</td>
                                <td>${sighting.dateTime}</td>
                            </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div id="userMap" class="userMap"></div>
            <script type="text/javascript">
                let sightingsObject = ${sightings};
                let mapId = document.querySelector('.userMap').id;
            </script>
        </div>
    </div>
</div>
<script src="JS/mainMap.js"></script>
<%@include file="footer.jsp"%>

