# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gemspec

gem "rails"
gem "rubocop"
gem "rubocop-performance"
gem "simplecov"
gem "yard"

group :test do
  gem "codeclimate-test-reporter", require: false
  gem "minitest-ci"
end
