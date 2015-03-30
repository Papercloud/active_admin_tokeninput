class HasManyTokenInput < Formtastic::Inputs::StringInput

	def input_html_options
		super.merge(
			"class" => "active-admin-tokeninput",
			"data-field-name" => "#{object_name.underscore}[#{method.to_s.singularize}_ids][]",
			"data-pre" => object.send("#{method}").map.to_json(:only => [:id, :name]),
			"name" => "",
			"value" => "",
			"data-autocomplete-path" => options[:autocomplete_path] ||= Rails.application.routes.url_helpers.send("autocomplete_admin_#{method.to_s}_path"),
			"data-propertyToSearch" => options[:search_property] ||= "name"
			)
	end
end
