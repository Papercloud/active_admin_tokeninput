class HasManyTokenInput < Formtastic::Inputs::StringInput

	def input_html_options
		super.merge(
			"class" => "active-admin-taginput",
			"data-field-name" => "#{object_name.underscore}[#{method.to_s.singularize}_ids][]",
			"data-pre" => object.send("#{method}").map.to_json(:only => [:id, :name]),
			"name" => "",
			"value" => "",
			)
	end
end