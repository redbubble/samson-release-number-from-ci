require 'minitest'
require 'minitest/autorun'

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

load "#{File.dirname(__FILE__)}/../lib/samson_release_number_from_ci/buildkite_release_generator.rb"

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new
