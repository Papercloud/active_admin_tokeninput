class BelongsToTokenInput < Formtastic::Inputs::StringInput

	def input_html_options
		super.merge(
			"data-token-limit" => 1,
			"class" => "active-admin-taginput",
			"data-field-name" => "#{object_name.underscore}[#{method.to_s.singularize}_id]",
			"data-pre" => "[#{object.send("#{method}").to_json(:only => [:id, :name])}]",
			"name" => "",
			"value" => "",
			)
	end
end