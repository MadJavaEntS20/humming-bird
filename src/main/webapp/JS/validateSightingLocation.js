// Example starter JavaScript for disabling form submissions if there are invalid fields
window.onload(toggleLocationInputs());
function toggleLocationInputs() {
    console.log('toggleLocationInputs');
    const locationInputElementLatitude = document.querySelector('#locationLatitude');
    const locationInputElementLongitude = document.querySelector('#locationLongitude');
    const manualInputElement = document.querySelector('#locationInput');

    manualInputElement.addEventListener('keyup', () => {
        if (locationInputElementLatitude.value.length > 0 || locationInputElementLongitude.value.length > 0) {
            locationInputElementLatitude.value = '';
            locationInputElementLongitude.value = '';
        }
    });

    document.querySelector('#locationInputCurrent').addEventListener('click', () => {
        if (manualInputElement.value.length > 0) {
            manualInputElement.value = '';
        }
    })

}