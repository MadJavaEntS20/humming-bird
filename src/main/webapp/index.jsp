<%--<jsp:useBean id="userAddMessage" scope="request" type="java"/>--%>
<%@include file="head.jsp"%>
<html>
<body>
<%@include file="navigation.jsp"%>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h3>${userAddMessage}</h3>
            <h2>Map</h2>
            <div id="map" class="map"></div>
            <script type="text/javascript">
                var map = new ol.Map({
                    target: 'map',
                    layers: [
                        new ol.layer.Tile({
                            source: new ol.source.OSM()
                        })
                    ],
                    view: new ol.View({
                        center: ol.proj.fromLonLat([37.41, 8.82]),
                        zoom: 4
                    })
                });
            </script>
<%--            <c:remove var="project4AddMessage"/>--%>
<%--            <h1 class="mt-5">A Bootstrap 4 Starter Template</h1>--%>
<%--            <p class="lead">Complete with pre-defined file paths and responsive navigation!</p>--%>
<%--            <ul class="list-unstyled">--%>
<%--                <li>Bootstrap 4.3.1</li>--%>
<%--                <li>jQuery 3.4.1</li>--%>
<%--            </ul>--%>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>
