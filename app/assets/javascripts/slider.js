$(document).ready(function(){
    $("img").mouseenter( function(){
        $(this).animate({height:400, width:360},200);
    } ).mouseleave( function(){
        $(this).animate({height:200, width:180},200);
    } );
});
