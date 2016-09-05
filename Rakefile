require "bundler/gem_tasks"
require "rake/extensiontask"
require "rspec/core/rake_task"

Rake::ExtensionTask.new('given_keyword_args') do |ext|
  ext.lib_dir = 'lib/given_keyword_args'
end

RSpec::Core::RakeTask.new(:spec)

task :default => [:compile, :spec]
