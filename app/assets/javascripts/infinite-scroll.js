const THRESHOLD = 300;
const $window = $(window);
const $document = $(document);
const endpoint = '/metube_paginate';

/* validate if the pagination URL has query params */

/* initialize pagination */
let isPaginating = false;

function sleep(milliseconds) {
    //This is just for flair, you really don't need to wait at all
    var start = new Date().getTime();
    for (var i = 0; i < 1e7; i++) {
        if ((new Date().getTime() - start) > milliseconds){
            break;
        }
    }
}

/* listen to scrolling */
$window.on('scroll', function () {
    if (!isPaginating && $window.scrollTop() > $document.height() - $window.height() - THRESHOLD) {
        isPaginating = true;
        $('#metube-comments').append('<img src="/assets/ajax-loader.gif" id="loader" alt="Loading..." title="Loading..." />');
        $.ajax({
            url: endpoint,
        }).done(function (result) {
            $('#metube-comments').append(result);
            $('#loader').remove();
            isPaginating = false;
        });
    }
});