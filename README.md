active_admin_taginput
=====================

Credit goes to James Smith (http://loopj.com) for the jquery tokenInput plugin
## Installation

	gem 'active_admin_taginput' , github: 'Papercloud/active_admin_taginput'

Include javascript files to active_admin.js.coffee

	#= require jquery.tokeninput
  	#= require active_admin/admin_tag_input

Create a .js file in app/assets/javascripts/active_admin called admin_tag_input.js
- Example admin_tag_input.js file (replace ids with your own)

	$(document).ready(function() {
		$("#winery_region_ids").tokenInput("/admin/regions/autocomplete", {
		prePopulate: $("#winery_region_ids").data("pre"),
		allowCreate: true,
		preventDuplicates: true,
		theme: "facebook",
		parentInput: "#winery_regions_input",
		fieldName: "winery[region_ids]"
		});
	});

Add this line to the active_admin model file

	ActiveAdmin.register Wine do
	
		#add this line where "Wine" is the model name
		tag_autocomplete :collection => Wine 
	
	end
  
  
