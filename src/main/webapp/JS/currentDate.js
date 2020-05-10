window.addEventListener("load", function() {
let now = new Date();
let year = now.getFullYear();
let month = now.getMonth() + 1;
let day = now.getDate();
let hour = now.getHours();
let minute = now.getMinutes();
let localDatetime = year + "-" +
    (month < 10 ? "0" + month.toString() : month) + "-" +
    (day < 10 ? "0" + day.toString() : day) + "T" +
    (hour < 10 ? "0" + hour.toString() : hour) + ":" +
    (minute < 10 ? "0" + minute.toString() : minute);
    let datetimeField = document.getElementById("dateTime");
    // console.log(1, datetimeField.value);
    datetimeField.value = datetimeField.value === '' ? localDatetime:
        `${datetimeField.value.slice(0,10)}T${datetimeField.value
            .slice(10, datetimeField.value.length -1)
            .replace(/ /g, '').slice(0, 5)}`;
    // console.log(2, datetimeField.value);

});





