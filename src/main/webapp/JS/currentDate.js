window.addEventListener("load", function() {
let now = new Date();
let year = now.getFullYear();
let month = now.getMonth() + 1;
let day = now.getDate();

let currentDate = year + "-" +
    (month < 10 ? "0" + month.toString() : month) + "-" +
    (day < 10 ? "0" + day.toString() : day);
    let datetimeField = document.getElementById("dateTime");
    datetimeField.value = datetimeField.value === '' ? currentDate: datetimeField.value;
});





