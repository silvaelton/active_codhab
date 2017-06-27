$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_codhab/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_codhab"
  s.version     = ActiveCodhab::VERSION
  s.authors     = ["Elton Silva"]
  s.email       = ["elton.chrls@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActiveCodhab."
  s.description = "TODO: Description of ActiveCodhab."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.2"

  s.add_development_dependency "sqlite3"
end
