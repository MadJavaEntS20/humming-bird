
document.querySelectorAll('.location-options').forEach(opt => {
    opt.addEventListener('click', () => {
        console.log(document.querySelector(`.${opt.id}`), document.querySelector(`.${opt.id}`).style.display);
        if (document.querySelector(`.${opt.id}`).style.display === 'block') {
            document.querySelector(`.${opt.id}`).style.display = 'none';
        } else {
            document.querySelector(`.${opt.id}`).style.display = 'block';
        }

        if (document.querySelector(`.${opt.id}`).className === 'location-current'
            && document.querySelector('.location-manual').style.display === 'block' ) {
            console.log("document.querySelector('.location-manual').style.display = 'none';");
            document.querySelector('.location-manual').style.display = 'none';
        }
        if (document.querySelector(`.${opt.id}`).className === 'location-manual'
            && document.querySelector('.location-current').style.display === 'block' ) {
            console.log("document.querySelector('.location-current').style.display = 'none';");
            document.querySelector('.location-current').style.display = 'none';
        }
    })
});