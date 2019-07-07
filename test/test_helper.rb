# frozen_string_literal: true

require "simplecov"

SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter

SimpleCov.start do
  add_filter "/test/"
  add_group "Library", "lib/"
end

SimpleCov.minimum_coverage_by_file 90
SimpleCov.minimum_coverage 90

ENV["RAILS_ENV"] = "test"
$LOAD_PATH.unshift File.expand_path("lib", __dir__)

require "devise_materialize"
require "rails_app/config/environment"
require "rails/test_help"
require "minitest"
require "minitest/spec"
require "minitest/pride"
require "minitest/autorun"
require "minitest/ci"

# For generators
require "rails/generators/test_case"
require "generators/devise_materialize/install_generator"
