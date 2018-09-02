$(document).ready(function(){
    $(".carousel-card").mouseenter( function(){
        $(this).find('img').animate({height:280, width:500},200);
        $(this).find('.card-text').fadeIn(300);
    } ).mouseleave( function(){
        $(this).find('img').animate({height:150, width:270},100);
        $(this).find('.card-text').fadeOut(100);
    } );


    $(".carousel-button.right").click(function(){
        const container = $(this).siblings('.card-container');
        container.animate({left:`+=${parseInt(container.width()/4)}`});
    });

    $(".carousel-button.left").click(function(){
        const container = $(this).siblings('.card-container');
        container.animate({left:`+=${parseInt(-container.width()/4)}`});
    });

});
