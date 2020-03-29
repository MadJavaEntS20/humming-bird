function geoFindMe() {

    const status = document.querySelector('#status');
    const locationInputElementLatitude = document.querySelector('#locationLatitude');
    const locationInputElementLongitude = document.querySelector('#locationLongitude');


    function success(position) {
        const latitude  = position.coords.latitude;
        const longitude = position.coords.longitude;
        status.textContent = '';
        locationInputElementLatitude.value = `${latitude}`;
        locationInputElementLongitude.value = `${longitude}`;
    }

    function error() {
        status.textContent = 'Unable to retrieve your location';
    }

    if (!navigator.geolocation) {
        status.textContent = 'Geolocation is not supported';
    } else {
        // status.textContent = 'Locating…';
        navigator.geolocation.getCurrentPosition(success, error);
    }

}

document.querySelector('#locationInputCurrent').addEventListener('click', geoFindMe, false);
