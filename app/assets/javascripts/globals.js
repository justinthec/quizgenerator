// Remove Fields Function

function remove_fields(link) {
	$(link).prev("input[type=hidden]").val("1");
	$(link).closest(".form-group").hide();
}


// Add Fields Function

function add_fields(link, association, content) {
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_"+association, "g")
	$(link).closest(".form-group").before(content.replace(regexp, new_id));
}