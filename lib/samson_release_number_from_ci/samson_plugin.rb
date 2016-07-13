module SamsonReleaseNumberFromCi
  class Engine < Rails::Engine
    config.to_prepare do
    end
  end
end

Samson::Hooks.view :project_form, "samson_release_number_from_ci/fields"

Samson::Hooks.callback :project_permitted_params do
  [:release_number_strategy]
end

Samson::Hooks.callback :buildkite_release_params do |project, build_param|
  include SamsonReleaseNumberFromCi::BuildkiteReleaseGenerator
  build_release_params(project, build_param).to_a
end
