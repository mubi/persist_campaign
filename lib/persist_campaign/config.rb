module PersistCampaign
  class Config
    attr_accessor :keys
    DEFAULT_KEYS = %w{utm_campaign utm_source utm_term utm_medium utm_content gclid}

    def initialize
      @keys = DEFAULT_KEYS
    end
  end
end