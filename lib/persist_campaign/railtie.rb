module PersistCampaign
  class Railtie < ::Rails::Railtie
    initializer 'persist_campaign.controller' do
      ActiveSupport.on_load(:action_controller) do
        include PersistCampaign::Controller
      end
    end
  end
end