module SamsonReleaseNumberFromCi
  module BuildkiteReleaseGenerator
    def build_release_params(project, author, commit, build_param)
      default_release_params = { commit: commit, author: author }

      if project.release_number_strategy == 'buildkite'
        build_number = build_param[:number]
        default_release_params.merge(number: build_number)
      else
        default_release_params
      end
    end
  end
end
