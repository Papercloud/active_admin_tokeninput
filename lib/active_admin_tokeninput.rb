require "active_admin_tokeninput/engine"
require "active_admin_tokeninput/version"
require "active_admin_tokeninput/dsl"

require "activeadmin"
module ActiveAdminTokeninput
end

::ActiveAdmin::DSL.send(:include, ActiveAdminTokeninput::DSL)