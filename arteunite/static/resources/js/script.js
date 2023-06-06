$(document).ready(function(){
	
/*Sticky nav*/
	$('.js--section-features').waypoint(function(direction){
		if (direction == "down") {
			$('nav').addClass('sticky');
		} else {
			$('nav').removeClass('sticky');
		}
	}, {
		offset:'60px'
	
	});
	
/*Scroll to buttons*/
	$('.js--scroll-to-features').click(function(){
		$('html, body').animate({scrollTop: $('.js--section-features').offset().top}, 1000);
	});
	
/*Mobile nav*/
	$('.js--nav-icon').click(function(){
		var nav = $('.js--main-nav');
		var icon = $('.js--nav-icon i');
		nav.slideToggle(200);
		
		if (icon.hasName('reorder-four-outline')) {
			icon.addName('close-outline');
			icon.removeName('reorder-four-outline');
		} else {
			icon.addName('reorder-four-outline');
			icon.removeName('close-outline');
		}
	});
	
});