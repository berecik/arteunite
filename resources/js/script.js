



/*Scrall on buttons*/
$(document).ready(function(){
	
	
	$('.js--scroll-to-features').click(function (){
		$('html, body').animate({scrollTop: $('.js--section-features').offset().top}, 1000);
		
	});
	
/* Mobile nav*/

	$('.js--nav-icon').click(function(){
		var nav = $('.js--main-nav');
		
		nav.slideToggle(200);
		
	});
});