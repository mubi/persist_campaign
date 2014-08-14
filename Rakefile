require "bundler/gem_tasks"
require "rspec/core/rake_task"

require 'gemfury'

# Override rubygem_push to push to gemfury instead when doing `rake release`
# http://stackoverflow.com/a/18278960/8376
unless Bundler::GemHelper.instance_methods.include?(:rubygem_push)
  raise "Bundler::GemHelper#rubygem_push method not found !!! monkeypatch repair needed"
end

module Bundler
  class GemHelper
    def rubygem_push(path)
      system("fury push #{path}")
    end
  end
end

desc "Modified to push to Gemfury"
task :release

RSpec::Core::RakeTask.new(:spec)
desc 'Runs the specs'
task default: :spec