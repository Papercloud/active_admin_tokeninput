module ActiveAdminTokeninput
  module DSL
    def tag_autocomplete(options={})


      collection_action :autocomplete, :method => :get do
        attribute = options[:attribute] || "name"

        collection = scoped_collection.where("CAST(#{attribute} as text) ILIKE ?", "%#{params[:q]}%")
        collection = collection.order("lower(CAST #{attribute} as text) ASC").limit(10)
        render :json => collection.as_json(:only => [:id, attribute.to_sym]), root: false
      end
  end
  end
end
