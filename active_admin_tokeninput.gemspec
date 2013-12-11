$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_admin_tokeninput/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_admin_tokeninput"
  s.version     = ActiveAdminTokeninput::VERSION
  s.authors     = ["William Porter"]
  s.email       = ["willports@gmail.com"]
  s.homepage    = "http://papercloud.com.au"
  s.summary     = "Turn fields to a token autocomplete in active_admin"

  s.files = Dir["{app,vendor,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.1"

  s.add_development_dependency "pg"
end
