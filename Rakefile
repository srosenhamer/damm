require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'yard'

RSpec::Core::RakeTask.new(:spec) do |config|
  config.rspec_opts = "--color --format documentation"
end

YARD::Rake::YardocTask.new do |t|
  t.files = %w(lib/damm.rb lib/damm/version.rb)
end

task :default => :spec

