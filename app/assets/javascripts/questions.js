// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){

	// Hover Events
	$('.question-panel').hover(function(event){
		$(this).toggleClass("hover");
	});


	// Isotope Script - Masonry Layout
	var $container = $('#questions-container');
	// init
	$container.isotope({
	  // options
	  itemSelector: '.question',
	  layoutMode: "masonry"
	});

	
});