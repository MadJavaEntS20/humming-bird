let iconFeatureArray = [];
console.log(sightingsObject);

sightingsObject.forEach(obj => {
    let iconFeature = new ol.Feature({
        geometry: new ol.geom.Point(ol.proj.fromLonLat([obj.longitude, obj.latitude])),
        attributes: {
            id: obj.id,
            species: obj.species,
            latitude: obj.latitude,
            longitude: obj.longitude,
            date: obj.dateTime
        }
    });

    let customColor;

    if (obj.species === 'ruby-throated') {
        customColor = 'Crimson';
    } else if (obj.species === 'rufous') {
        customColor = 'GoldenRod';
    } else if (obj.species === 'green-violetear') {
        customColor = 'LimeGreen';
    } else {
        customColor = 'MediumBlue';
    }
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
    ],
    view: new ol.View({
        center: ol.proj.fromLonLat([-89, 44.60]),
        zoom: 5
    })
});
map.addLayer(vectorLayer);


// tooltips
let info = $('#info');
info.tooltip({
    animation: false,
    trigger: 'manual'
});

let displayFeatureInfo = function(pixel) {
    info.css({
        left: (pixel[0] + 55) + 'px',
        top: (pixel[1] - 5) + 'px'
    });
    let feature = map.forEachFeatureAtPixel(pixel, function(feature) {
        return feature;
    });
    if (feature) {
        info.tooltip('hide')
            .attr('title', `Species: ${feature.get('attributes').species}
                Date: ${formatDate(feature.get('attributes').date)}
                Lat/Lon: ${feature.get('attributes').latitude}, ${feature.get('attributes').longitude}`)
            .attr('data-html', true)
            .tooltip('fixTitle')
            .tooltip('show');
    } else {
        info.tooltip('hide');
    }
};

map.on('pointermove', function(evt) {
    if (evt.dragging) {
        info.tooltip('hide');
        return;
    }
    displayFeatureInfo(map.getEventPixel(evt.originalEvent));
});

map.on('click', function(evt) {
    displayFeatureInfo(evt.pixel);
});

function formatDate(date) {
    let dateformat = date.slice(0, 10).split("-");
    return `${dateformat[1]}/${dateformat[2]}/${dateformat[0]}`
}


// playback control
let startDate = sixMonthsAgo();
const frameRate = 0.5;
let animationId = null;

function sixMonthsAgo() {
    let sixMos = new Date();
    sixMos.setMonth(sixMos.getMonth() - 2);
    return sixMos.toISOString().slice(0, 19).replace('T', ' ') + ".0";
}

function updateInfo() {
    let el = document.getElementById('time');
    el.innerHTML = `${startDate.getMonth() + 1}/${startDate.getDate()}/${startDate.getFullYear()}`
}

function updateFeatures(date) {
    let formattedDate = new Date(date).toISOString().slice(0, 19).replace('T', ' ') + ".0";
    iconFeatureArray.forEach(feature => {
        if (feature.get('attributes').date.slice(0, 10) !== formattedDate.slice(0, 10)) {
            feature.setStyle(new ol.style.Style(null))
        } else {
            updateFeatureStyle(feature)
        }
    })
}

function updateFeatureStyle(feature) {
    let customColor;
    if (feature.get('attributes').species === 'ruby-throated') {
        customColor = 'Crimson';
    } else if (feature.get('attributes').species === 'rufous') {
        customColor = 'GoldenRod';
    } else if (feature.get('attributes').species === 'green-violetear') {
        customColor = 'LimeGreen';
    } else {
        customColor = 'MediumBlue';
    }
    feature.setStyle(new ol.style.Style({
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
    }))
}

function setTime() {
    let date = new Date(startDate).setDate(new Date(startDate).getDate() + 1);
    let newDate = new Date(date);
    if (newDate > new Date().setMonth(new Date().getMonth() + 5)) {
        stop();
    }
    startDate = newDate;
    updateFeatures(newDate);
    updateInfo();
}

let stop = function() {
    if (animationId !== null) {
        window.clearInterval(animationId);
        animationId = null;
    }
};

let play = () => {
    setTime();
    stop();
    animationId = window.setInterval(setTime, 150 / frameRate);
};

let reset = () => {
    startDate = new Date(sixMonthsAgo());
    updateInfo();
    iconFeatureArray.forEach(feature => {
        updateFeatureStyle(feature);
    });
}


let startButton = document.getElementById('play');
if (startButton) {
    startButton.addEventListener('click', play, false);

    let stopButton = document.getElementById('pause');
    stopButton.addEventListener('click', stop, false);

    let resetButton = document.getElementById('reset');
    resetButton.addEventListener('click', reset, false);

    updateInfo();
}
