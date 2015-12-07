ENV['RAILS_ENV'] = 'test'

require File.expand_path("../dummy/config/environment.rb", __FILE__)
require 'rspec/rails'

Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end
