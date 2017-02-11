# frozen_string_literal: true
ENV["RAILS_ENV"] = "test"
$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "simplecov"
require "devise_materialize"
require "rails_app/config/environment"
require "rails/test_help"
require "minitest"
require "minitest/spec"
require "minitest/pride"
require "minitest/autorun"
require "minitest/ci"

if ENV["CIRCLE_TEST_REPORTS"].present?
  Minitest::Ci.report_dir = "#{ENV['CIRCLE_TEST_REPORTS']}/reports"
end

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter
]

SimpleCov.start do
  add_filter "/test/"

  add_group "Library", "lib"
end

# For generators
require "rails/generators/test_case"
require "generators/devise_materialize/install_generator"
