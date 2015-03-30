module ActiveAdminTokeninput
  module DSL
    def tag_autocomplete(options={})


      collection_action :autocomplete, :method => :get do
        attribute = options[:attribute] || "name"

        collection = scoped_collection.where("#{attribute} ILIKE ?", "%#{params[:q]}%")
        collection = collection.order("lower(#{attribute}) ASC").limit(10) if attribute.is_a? String
        render :json => collection.as_json(:only => [:id, attribute.to_sym]), root: false
      end
  end
  end
end
