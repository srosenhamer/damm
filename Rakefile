require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |config|
  config.rspec_opts = "--color --format documentation"
end

task :default => :spec

