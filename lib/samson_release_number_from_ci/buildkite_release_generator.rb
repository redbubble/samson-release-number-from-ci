module SamsonReleaseNumberFromCi
  module BuildkiteReleaseGenerator
    def build_release_params(project, build_param)
      extra_release_params = {}
      if project.release_number_strategy == 'buildkite'
        build_number = build_param[:number]
        extra_release_params = {number: build_number}
      end
      return extra_release_params
    end
  end
end
