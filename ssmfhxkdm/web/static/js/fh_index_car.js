$(function(){
	//** 展示交互
	var timeoutId
	var $last = $('.fhyxhk_header_car_body')
	
	function fadeOut() {
	    timeoutId = setTimeout(function() {
	        $last.fadeOut('slow');
	    }, 500)
	}
	
	$('.fhyxhk_header_car').hover(function() {
	    clearTimeout(timeoutId)
	    $last.fadeIn('slow');
	}, fadeOut)
	
	$last.hover(function() {
	    clearTimeout(timeoutId)
	}, fadeOut)
	
	
});