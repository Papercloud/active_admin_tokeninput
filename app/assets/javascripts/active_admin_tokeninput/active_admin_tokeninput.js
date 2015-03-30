//= require jquery.pc-tokeninput

$(document).ready(function() {
	$("input.active-admin-tokeninput").each(function() {
		autocomplete_path = $(this).attr('data-autocomplete-path');
		tokenLimit = $(this).attr('data-token-limit');
		fieldName = $(this).attr('data-field-name');


		$(this).tokenInput(autocomplete_path, {
			prePopulate: $(this).data("pre"),
			allowCreate: true,
			preventDuplicates: true,
			theme: "facebook",
			parentInput: "#" + $(this).attr('id'),
			fieldName: fieldName,
			tokenLimit: tokenLimit,
			propertyToSearch: $(this).data("propertyToSearch")
		});
	});
});
