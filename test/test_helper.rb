# frozen_string_literal: true
ENV["RAILS_ENV"] = "test"
$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "simplecov"
require "rails_app/config/environment"
require "rails/test_help"
require "minitest/spec"
require "minitest/pride"
require "devise_materialize"

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
