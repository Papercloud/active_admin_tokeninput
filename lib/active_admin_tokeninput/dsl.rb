module ActiveAdminTokeninput
  module DSL
  	def tag_autocomplete(options={})
  		collection_action :autocomplete, :method => :get do
  			collection = active_admin_config.resource_class.where("name ILIKE ?", "%#{params[:q]}%").order('lower(name) ASC').limit(10)
  		 	render :json => collection.as_json(:only => [:id, :name]), root: false
  		end
	end
  end
end
