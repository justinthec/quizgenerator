// Remove Fields Function

function remove_fields(link) {
	$(link).prev("input[type=hidden]").val("1");
	$(link).closest(".form-group").fadeOut("medium");
}


// Add Fields Function

function add_fields(link, association, content) {
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_"+association, "g");
	$(link).closest(".form-group").before(content.replace(regexp, new_id)).prev().hide().fadeIn("medium"); // Takes the closest form-group div and adds the newfield before it. Then selects the newfield and fades it in.
	add_color_pickers();
}


// Color Picker Functions

function add_color_pickers() {

	$(".with-colorpicker").each(function() {
		var randomColor = '#'+Math.floor((Math.random()*240)+16).toString(16)+Math.floor((Math.random()*240)+16).toString(16)+Math.floor((Math.random()*240)+16).toString(16);
		var oldVal = $(this).find('input').val();
		$(this).colorpicker({
	        component: '.color-button',
	        color: randomColor
		});
		if(oldVal!=""){
			$(this).colorpicker('setValue', oldVal);
		}
		else{
			$(this).find('input').val(randomColor);
		}
  	});
}

// Ready Call
$(function(){
    add_color_pickers();
});
