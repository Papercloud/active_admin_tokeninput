require "active_admin_taginput/engine"
require "active_admin_taginput/version"
require "active_admin_taginput/railtie"
require "active_admin_taginput/dsl"

require "activeadmin"
module ActiveAdminTaginput
end

::ActiveAdmin::DSL.send(:include, ActiveAdminTaginput::DSL)