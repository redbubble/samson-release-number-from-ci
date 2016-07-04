$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samson_release_number_from_ci/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samson_release_number_from_ci"
  s.version     = SamsonReleaseNumberFromCi::VERSION
  s.authors     = ["Redbubble"]
  s.email       = [""]
  s.homepage    = "https://github.com/redbubble/samson-release-number-from-ci"
  s.summary     = "A plugin for samson that allow release to use release number from CI"
  s.description = "Use this gem together with zendesk/samson, samson is a continuous deployment tool. By installing the gem, you can go to project setting page and choose your release number strategy. Currently it only supports samson's default and Buidkite's build number"
  s.license     = "MIT"

  s.files = Dir["{app,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'rails', '~> 4.2', '>= 4.2.6'
  s.add_development_dependency "minitest", '~> 0'
end
