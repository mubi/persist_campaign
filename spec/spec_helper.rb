ENV['RAILS_ENV'] = 'test'

require File.expand_path("../dummy/config/environment.rb", __FILE__)
require 'rspec/rails'

Rails.backtrace_cleaner.remove_silencers!

module Rails5ControllerSpecShim
  module InstanceMethods
    private
    def get(action, params = {})
      super(action, params: params)
    end
  end

  def self.included(base)
    if Gem::Version.new(Rails.version) >= Gem::Version.new('5')
      base.prepend(InstanceMethods)
    end
  end
end

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.include Rails5ControllerSpecShim, type: :controller
end
