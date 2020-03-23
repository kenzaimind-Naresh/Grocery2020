$(document).ready(function () {

    // Show or hide the sticky footer button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 200) {
            $('.go-top').fadeIn(200);
        } else {
            $('.go-top').fadeOut(200);
        }
    });
    // Animate the scroll to top
    $('.go-top').click(function (event) {
        event.preventDefault();
        $('html, body').animate({ scrollTop: 0 }, 1000);
    })
});

$(window).scroll(function () {
    if ($(this).scrollTop() > 1) {
        $('.navbar-default').addClass("sticky");
    }
    else {
        $('.navbar-default').removeClass("sticky");
    }
    if ($(this).scrollTop() > 1) {
        $('.navbar-toggle').addClass("sticky");
    }
    else {
        $('.navbar-toggle').removeClass("sticky");
    }
    if ($(this).scrollTop() > 1) {
        $('.loginbar').addClass("sticky");
    }
    else {
        $('.loginbar').removeClass("sticky");
    }
    if ($(this).scrollTop() > 1) {
        $('.tm-logo').addClass("sticky");
    }
    else {
        $('.tm-logo').removeClass("sticky");
    }
});

$(function () {
    // bind change event to select
    $('#dynamic_select').bind('change', function () {
        var url = $(this).val(); // get selected value
        if (url) { // require a URL
            window.location = url; // redirect
        }
        return false;
    });
});


function blinker() {
    $('.guide').fadeOut(1200);
    $('.guide').fadeIn(1200);
}

setInterval(blinker, 8000);

