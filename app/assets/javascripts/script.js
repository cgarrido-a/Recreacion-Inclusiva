document.addEventListener("turbolinks:load", function () {

    const urlRegiones = 'https://apis.digital.gob.cl/dpa/regiones';
    getRegiones(urlRegiones);

});



const getRegiones = (url) => {

    $.ajax({
        url: url,
        method: 'GET',
        success: function (response) {
            const regiones = response;
            console.log(regiones)
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



    $('#regions').append(`<li>${region.nombre}: <%=@user.%> </li>`);



}

