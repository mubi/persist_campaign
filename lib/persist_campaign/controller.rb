module PersistCampaign
  module Controller
    def self.included base
      base.send :include, InstanceMethods
      base.alias_method_chain :_compute_redirect_to_location, :persist_campaign_params
    end

    module InstanceMethods
      # Solution provided by ndp's save-the-campaign gem (http://github.com/ndp/save-the-campaign),
      # reproduced here under the MIT license

      if Rails.version >= "4.2.1"
        def _compute_redirect_to_location_with_persist_campaign_params(request, options = {})
          url = _compute_redirect_to_location_without_persist_campaign_params(request, options)
          _add_persisted_keys_to(request, url)
        end
      else
        def _compute_redirect_to_location_with_persist_campaign_params(options = {})
          url = _compute_redirect_to_location_without_persist_campaign_params(options)
          _add_persisted_keys_to(request, url)
        end
      end

      def _add_persisted_keys_to(request, url)
        keys = PersistCampaign.config.keys.map(&:to_s)
        to_persist = request.params.slice(*keys)

        unless to_persist.empty?
          url << (url =~ /\?/ ? '&' : '?')
          url << to_persist.to_param
        end

        url
      end
    end
  end
end
