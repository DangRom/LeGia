$(document).ready(function() {
    var slider__Service = $("#slider__service");
    slider__Service.owlCarousel({
        addClassActive: true,
        pagination: false,
        items: 3,
        autoPlay: true,
        stopOnHover: true,
        navigation: false,
        itemsDesktop: [1200, 3],
        itemsDesktopSmall: [993, 2],
        itemsTablet: [767, 1],
        itemsMobile: false
    });
    $("#control__next").click(function() {
        slider__Service.trigger('owl.next');
    });
    $("#control__prev").click(function() {
        slider__Service.trigger('owl.prev');
    });

    var slider__Partner = $("#slider__partner");
    slider__Partner.owlCarousel({
        addClassActive: true,
        pagination: false,
        items: 4,
        autoPlay: true,
        stopOnHover: true,
        navigation: false,
        itemsDesktop: [1100, 3],
        itemsDesktopSmall: [993, 2],
        itemsTablet: [767, 2],
        itemsMobile: [631, 1]
    });
    $("#partner__control__next").click(function() {
        slider__Partner.trigger('owl.next');
    });
    $("#partner__control__prev").click(function() {
        slider__Partner.trigger('owl.prev');
    });
})