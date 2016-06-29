module SamsonReleaseNumberFromCi
  class Engine < Rails::Engine
    config.to_prepare do
      Dir["#{File.dirname(__FILE__)}/../../app/decorators/*.rb"].each do |c|
        require_dependency(c)
      end
    end
  end
end

Samson::Hooks.view :project_form, "samson_release_number_from_ci/fields"

Samson::Hooks.callback :project_permitted_params do
  [:release_number_strategy]
end
