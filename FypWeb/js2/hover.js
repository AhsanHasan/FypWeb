$(document).ready(function () {
    $('.hovereffect').hover(function () {
        $(this).children('.z-text').css('top', '0').fadeToggle(600);
    });
});
