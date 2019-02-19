$(document).ready(function() {
	
	//$(".left-panel").customScrollbar({preventDefaultScroll: true});
    
    setTimeout(function(){
		$('[data-notify-hide]').slideUp(400);
	}, 2000);

	$('[data-notify-hide]').dblclick(function(){
		$(this).slideUp(400);
	});
    
});