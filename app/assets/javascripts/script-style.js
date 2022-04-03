document.addEventListener("turbolinks:load", function () {
    $("body").scroll(function () {
        $("nav").css("background-color", "red");
    })
});