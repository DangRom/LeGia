$(document).ready(function() {

    var toogle = true;
    $(".search__box__button").click(function() {
        if (toogle === true) {
            $(".search__box__field").width("230px");
            $(this).children().removeClass('fa-search');
            $(this).children().addClass('fa-times');
        } else {
            $(".search__box__field").width("0px");
            $(this).children().removeClass('fa-times');
            $(this).children().addClass('fa-search');
        }
        toogle = !toogle;
    });
    $(".hamburger").click(function() {
        $('#mobile__menu').sidebar('toggle');
    })
    $(".search__box__button__responsive").click(function() {
        $('#mobile__search').sidebar('toggle');
    })
    $(".dropdown__menu__mobile").click(function(event) {
        $(".list__menu__mobile__dropdown").slideUp("300");
        if (!$(this).next().is(':visible')) {
            $(this).next().slideDown("300");
        }
    });
    $(window).scroll(function() {
        if ($(this).scrollTop() > 500) {
            //console.log("HIIH");
            $(".top_button").show("fast");
        } else if ($(this).scrollTop() <= 500) {
            $(".top_button").hide("fast");
        }
    });
    $(".top_button").click(function(event) {
        $("html,body").animate({
            scrollTop: 0
        }, "400");
    });

})