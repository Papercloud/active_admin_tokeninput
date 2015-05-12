class HasManyTokenInput < Formtastic::Inputs::StringInput

	def input_html_options
		search_property = options[:search_property] || "name"
		super.merge(
			"class" => "active-admin-tokeninput",
			"data-field-name" => "#{object_name.to_s.underscore}[#{method.to_s.singularize}_ids][]",
			"data-pre" => options[:unscoped] == true ? nil : object.send("#{method}").map.to_json(:only => [:id, search_property.to_sym]),
			"name" => "",
			"value" => "",
			"data-autocomplete-path" => options[:autocomplete_path] ||= Rails.application.routes.url_helpers.send("autocomplete_admin_#{method.to_s}_path"),
			"data-property-to-search" => search_property
			)
	end
end
