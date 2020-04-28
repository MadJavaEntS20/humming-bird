// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
    'use strict';
    window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        let forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        let validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();

// function toggleLocationInputs() {
//     const locationInputElementLatitude = document.querySelector('#locationLatitude');
//     const locationInputElementLongitude = document.querySelector('#locationLongitude');
//     const manualInputElement = document.querySelector('#locationInput');
//
//     manualInputElement.addEventListener('keyup', () => {
//         if (locationInputElementLatitude.value.length > 0 || locationInputElementLongitude.value.length > 0) {
//             locationInputElementLatitude.value = null;
//             locationInputElementLongitude.value = null;
//         }
//     })
//
//     document.querySelector('#locationInputCurrent').addEventListener('click', () => {
//         if (manualInputElement.value.length > 0) {
//             manualInputElement.value = null;
//         }
//     })
//
//
// }
