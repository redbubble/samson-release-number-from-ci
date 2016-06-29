module SamsonReleaseNumberFromCi
  class Engine < Rails::Engine
  end
end

Samson::Hooks.view :project_form, "samson_release_number_from_ci/fields"

Samson::Hooks.callback :project_permitted_params do
  [:release_number_strategy]
end
