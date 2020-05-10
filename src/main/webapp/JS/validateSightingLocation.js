
document.querySelectorAll('.location-options').forEach(opt => {
    opt.addEventListener('click', () => {
        if (document.querySelector(`.${opt.id}`).style.display === 'block') {
            document.querySelector(`.${opt.id}`).style.display = 'none';
        } else {
            document.querySelector(`.${opt.id}`).style.display = 'block';
        }
    })
});

function validateLocation() {
    if (document.querySelector('#locationLatitude').value === '' && document.querySelector('#locationInput').value === '') {
        document.querySelector('.location-tooltip').style.position = 'initial';
        document.querySelector('.location-tooltip').style.display = 'flex';
        document.querySelector('.location-tooltip').innerHTML = 'Please get Current Location or Enter Location.';
        return false;
    } else {
        document.querySelector('.location-tooltip').style.display = 'none';
        return true;
    }
}

document.querySelector('#location-current').addEventListener('click', () => {
    document.querySelector('.location-tooltip').style.display = 'none';
});

document.querySelector('#locationInput').addEventListener('keyup', () => {
    document.querySelector('.location-tooltip').style.display = 'none';
});


