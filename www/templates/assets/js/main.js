$(document).ready(function () {

    //$(".left-panel").customScrollbar({preventDefaultScroll: true});

    // Check comment form    
    $('input[data-add-comment]').on('click', function(e){
		e.preventDefault();
        console.log(55555);
		comment = $('.comments-text').children('.textarea');
		if ( comment.val() == '' ) {
			$('.notification--error[data-error-comment-empty]').fadeIn();
			comment.focus(function(event) {
				$('.notification--error[data-error-comment-empty]').fadeOut();
			});
		} else {
			$('#commentForm').submit();
		}
	});

    setTimeout(function () {
        $('[data-notify-hide]').slideUp(400);
    }, 2000);

    $('[data-notify-hide]').dblclick(function () {
        $(this).slideUp(400);
    });

});