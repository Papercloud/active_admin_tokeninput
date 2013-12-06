class Railtie < ::Rails::Railtie
  initializer "active_admin_taginput.setup_vendor", :after => "active_admin_taginput.setup", :group => :all do |app|
    vendor_path = File.expand_path("../../vendor/assets", __FILE__)
    app.config.assets.paths.push(vendor_path.to_s)
  end
end