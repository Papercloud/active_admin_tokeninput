module ActiveAdminTokeninput
  class Engine < ::Rails::Engine
    isolate_namespace ActiveAdminTokeninput

    initializer 'active_admin.tokeninput', :group => :all do |app|

	    vendor_path = File.expand_path("../../vendor/assets", __FILE__)
	    app.config.assets.paths.push(vendor_path.to_s)
	    app.config.assets.precompile += %w( active_admin_tokeninput/active_admin_tokeninput.js )

	    ActiveAdmin.application.tap do |config|
	    	config.register_javascript 'active_admin_tokeninput/active_admin_tokeninput'
		end
	end
  end
end