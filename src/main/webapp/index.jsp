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
                let iconFeatureArray = [];

                sightingsObject.forEach(obj => {
                    let iconFeature = new ol.Feature({
                        geometry: new ol.geom.Point(ol.proj.fromLonLat([obj.latitude, obj.longitude]))
                    });

                    let iconStyle = new ol.style.Style({
                        image: new ol.style.Circle({
                            radius: 6,
                            stroke: new ol.style.Stroke({
                                color: 'white',
                                width: 3
                            }),
                            fill: new ol.style.Fill({
                                color: 'Crimson'
                            })
                        })
                    })
                    iconFeature.setStyle(iconStyle);
                    iconFeatureArray.push(iconFeature);
                });

                console.log(iconFeatureArray);

                let vectorSource = new ol.source.Vector({
                    features: iconFeatureArray // array of features
                });

                let vectorLayer = new ol.layer.Vector({
                    source: vectorSource
                });

                const map = new ol.Map({
                    target: 'map',
                    layers: [
                        new ol.layer.Tile({
                            source: new ol.source.OSM()
                        })
                        , vectorLayer
                    ],
                    view: new ol.View({
                        center: ol.proj.fromLonLat([-89, 44.60]),
                        zoom: 5
                    })
                });

                console.log(map, 'map', vectorLayer, 'vectorLayer', vectorSource, 'vectorSource')
            </script>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>
