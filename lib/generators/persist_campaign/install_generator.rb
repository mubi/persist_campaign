module PersistCampaign
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      argument :name, type: :string, default: 'persist_campaign'

      def create_initializer_file
        template 'initializer.rb', "config/initializers/#{name}.rb"
      end
    end
  end
end