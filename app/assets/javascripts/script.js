document.addEventListener("turbolinks:load", function () {

    const urlRegiones = 'https://apis.digital.gob.cl/dpa/regiones';
    console.log("URL =>" + urlRegiones)
    getRegiones(urlRegiones);
});

const getRegiones = (url) => {
    console.log('obteniendo pokemones desde' + url);
    $.ajax({
        url: url,
        method: 'GET',
        success: function (response) {
            const regiones = response;
            console.log(regiones);
            regiones.forEach(function (region) {
                showRegiones(region);
            });


        },
        error: function (error) {
            console.log(error);
        }
    });
};

const showRegiones = (region) => {

    $('.region-selector').append(`
        <option value="${region.nombre}">${region.nombre}</option>
    `);

}

