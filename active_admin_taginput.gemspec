$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_admin_taginput/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_admin_taginput"
  s.version     = ActiveAdminTaginput::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActiveAdminTaginput."
  s.description = "TODO: Description of ActiveAdminTaginput."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.1"

  s.add_development_dependency "pg"
end
