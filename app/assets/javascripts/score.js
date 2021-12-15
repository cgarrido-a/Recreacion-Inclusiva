document.addEventListener("turbolinks:load", function () {

    $("#input-id").rating({ min: 0, max: 5, step: 1, size: 'sm' });


    $("#input-id").on('rating:change', function (event, value, caption) {
        const stars = $(this).val()
        $(".comment-submit")
        alert(stars)
        $("#score-stars").append(`<strong>Score: ${parseInt(stars)}</strong>`)
        console.log(parseInt(stars))
    });




});
