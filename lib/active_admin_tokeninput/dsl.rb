module ActiveAdminTokeninput
  module DSL
    def tag_autocomplete(options={})


      collection_action :autocomplete, :method => :get do
        attribute = options[:attribute] || "name"

        collection = scoped_collection.where("#{attribute.to_s} ILIKE ?", "%#{params[:q]}%")
        collection = collection.order("lower(#{attribute.to_s}) ASC").limit(10)
        render :json => collection.as_json(:only => [:id, attribute.to_sym]), root: false
      end
  end
  end
end
