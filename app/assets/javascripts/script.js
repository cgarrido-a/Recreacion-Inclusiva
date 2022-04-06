document.addEventListener("turbolinks:load", function () {
    $(".alert").on('click', function () {
        $(this).hide(500);
    });


});