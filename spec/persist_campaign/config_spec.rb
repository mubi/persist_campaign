require 'spec_helper'

describe PersistCampaign::Config do
  subject(:config) { PersistCampaign::Config.new }

  describe '.initialize' do
    it 'assigns default param keys' do
      expect(config.keys).to eq config.class::DEFAULT_KEYS
    end
  end
end