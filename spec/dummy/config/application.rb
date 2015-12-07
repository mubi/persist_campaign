require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"

Bundler.require(*Rails.groups)

module Dummy
  class Application < Rails::Application
  end
end

Dummy::Application.configure do
  config.eager_load = false
  config.secret_key_base = 'abcdef123456'
end
