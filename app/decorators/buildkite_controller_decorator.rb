Integrations::BuildkiteController.class_eval do
  include SamsonReleaseNumberFromCi::BuildkiteReleaseGenerator

  def release_params
    build_release_params(project, user, commit, build_param)
  end
end
