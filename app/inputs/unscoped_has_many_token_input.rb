class UnscopedHasManyTokenInput < Formtastic::Inputs::StringInput

  def input_html_options
    search_property = options[:search_property] || "name"
    super.merge(
      "class" => "active-admin-tokeninput",
      "data-field-name" => "#{object_name.try(:underscore)}[#{method.to_s.singularize}_ids][]",
      # Removed the data-pre field, because if you are using a custom form it will not respond to the method
      "name" => "",
      "value" => "",
      "data-autocomplete-path" => options[:autocomplete_path] ||= Rails.application.routes.url_helpers.send("autocomplete_admin_#{method.to_s}_path"),
      "data-property-to-search" => search_property
      )
  end
end
