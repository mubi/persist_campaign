require 'persist_campaign/version'
require 'persist_campaign/config'
require 'persist_campaign/controller'

module PersistCampaign
  def self.config
    @config ||= PersistCampaign::Config.new
  end

  def self.configure(&block)
    yield(config) if block_given?
  end
end

require 'persist_campaign/railtie' if defined?(Rails)