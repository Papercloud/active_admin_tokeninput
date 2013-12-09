active_admin_taginput
=====================

Credit goes to James Smith (http://loopj.com) for the jquery tokenInput plugin
## Installation

	gem 'active_admin_taginput' , github: 'Papercloud/active_admin_taginput'

Add this line to the active_admin model file

	ActiveAdmin.register Wine do
		tag_autocomplete
	end

Add this to your activeadmin form partial
 
	<%= render 'active_admin/taginput', :form => f, :collection => :posts %> 
	
If you need to define your own autocomplete path

	<%= render 'active_admin/taginput', :autocomplete_path => autocomplete_admin_posts_path, :form => f, :collection => :posts %> 

  
  
