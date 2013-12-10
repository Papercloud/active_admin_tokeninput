active_admin_tokeninput
=====================

Credit goes to James Smith (http://loopj.com) for the jquery tokenInput plugin
## Installation

	gem 'active_admin_taginput' , github: 'Papercloud/active_admin_tokeninput'

Add this line to the active_admin model file, which sets up the autocomplete route. 

	ActiveAdmin.register Post do
		tag_autocomplete
	end

Add this to your activeadmin form if it's a has_many reationship 
 
	f.input :posts, as: :has_many_token
	
Otherwise if it's a belongs_to

	f.input :posts, as: :belongs_to_token

If you need to define your own autocomplete path

	f.input :posts, as: :belongs_to_token, autocomplete_path: autocomplete_admin_author_posts_path
  
  
