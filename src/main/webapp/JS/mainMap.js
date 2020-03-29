let iconFeatureArray = [];
sightingsObject.forEach(obj => {
    let iconFeature = new ol.Feature({
        geometry: new ol.geom.Point(ol.proj.fromLonLat([obj.longitude, obj.latitude]))
    });
    let customColor;

    if (obj.species === 'ruby-throated') {
        customColor = 'Crimson';
    } else if (obj.species === 'rufous') {
        customColor = 'GoldenRod';
    } else if (obj.species === 'green violetear') {
        customColor = 'LimeGreen';
    } else {
        customColor = 'MediumBlue';
    }
    console.log(customColor)
    let iconStyle = new ol.style.Style({
        image: new ol.style.Circle({
            radius: 6,
            stroke: new ol.style.Stroke({
                color: 'white',
                width: 1
            }),
            fill: new ol.style.Fill({
                color: customColor
            })
        })
    });

    iconFeature.setStyle(iconStyle);
    iconFeatureArray.push(iconFeature);
});

let vectorSource = new ol.source.Vector({
    features: iconFeatureArray // array of features
});

let vectorLayer = new ol.layer.Vector({
    source: vectorSource
});

const map = new ol.Map({
    target: mapId,
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

console.log("map", map);