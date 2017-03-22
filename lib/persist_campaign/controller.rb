module PersistCampaign
  module Controller
    def self.included base
      base.send :prepend, InstanceMethods
    end

    module InstanceMethods
      # Solution provided by ndp's save-the-campaign gem (http://github.com/ndp/save-the-campaign),
      # reproduced here under the MIT license

      if Gem::Version.new(Rails.version) >= Gem::Version.new('4.2.1')
        def _compute_redirect_to_location(request, options = {})
          url = super(request, options)
          _add_persisted_keys_to(request, url)
        end
      else
        def _compute_redirect_to_location(options = {})
          url = super(options)
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
