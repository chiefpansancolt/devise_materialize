# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"
require "rubocop/rake_task"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

desc "Rubocop Task"
task(:rubocop) do
  RuboCop::RakeTask.new do |t|
    t.options = ["-c", ".rubocop.yml", "-D"]
    t.fail_on_error = true
  end
end

task default: :test
