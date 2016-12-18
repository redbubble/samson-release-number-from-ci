$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samson_release_number_from_ci/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samson_release_number_from_ci"
  s.version     = SamsonReleaseNumberFromCi::VERSION
  s.authors     = ["Redbubble"]
  s.email       = ["delivery-engineers@redbubble.com"]
  s.homepage    = "https://github.com/redbubble/samson-release-number-from-ci"
  s.summary     = "A plugin for samson that allow release to use release number from CI"
  s.description = "Use this gem together with zendesk/samson, samson is a continuous deployment tool. By installing the gem, you can go to project setting page and choose your release number strategy. Currently it only supports samson's default and Buidkite's build number"
  s.license     = "MIT"

  s.files = Dir["{app,db,lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'rails', '~> 5.0'
  s.add_development_dependency "minitest"
end
