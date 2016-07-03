require_relative '../test_helper'

require 'ostruct'

describe SamsonReleaseNumberFromCi::BuildkiteReleaseGenerator do

  describe '#release_params' do
    let(:number) { 123 }
    let(:build_params) { { number: number } }
    let(:subject) { Object.new.extend(SamsonReleaseNumberFromCi::BuildkiteReleaseGenerator) }

    it 'injects the buildkite number to release params when the release_number_strategy is set to buildkite' do
      project = OpenStruct.new(release_number_strategy: 'buildkite')

      result = subject.build_release_params(project, build_params)
      expected = { number: number }
      assert_equal(result, expected)
    end

    it 'does not use the buildkite number if project has a default release_number_strategy' do
      project = OpenStruct.new(release_number_strategy: 'default')

      result = subject.build_release_params(project, build_params)
      expected = {}
      assert_equal( result, expected )
    end
  end

end
