require "bundler/gem_tasks"
require "rake/testtask"
require "rubocop/rake_task"

if ENV['CIRCLECI']
  dir = File.join(ENV['CIRCLE_ARTIFACTS'], 'linters')
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

desc 'Rubocop Task'
task (:rubocop) do
  outputpath =
    if ENV['CIRCLECI']
      "#{dir}/rubocop-results.html"
    else
      'rubocop-results.html'
    end
  RuboCop::RakeTask.new do |t|
    t.options = [
      '-c', '.rubocop.yml', '-D', '-f', 'html', '-o', outputpath,
    ]
    t.fail_on_error = true
  end
end

task default: :test
