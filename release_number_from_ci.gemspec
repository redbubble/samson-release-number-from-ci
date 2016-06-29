$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "release_number_from_ci/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "release_number_from_ci"
  s.version     = ReleaseNumberFromCi::VERSION
  s.authors     = ["andrew jones"]
  s.email       = ["andrew@andrewjones.id.au"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ReleaseNumberFromCi."
  s.description = "TODO: Description of ReleaseNumberFromCi."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
