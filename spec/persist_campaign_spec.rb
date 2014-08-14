require 'spec_helper'

describe PersistCampaign do
  it 'should be valid' do
    expect(PersistCampaign).to be_a(Module)
  end

  describe '.config' do
    it 'returns the configuration instance' do
      expect(PersistCampaign.config).to be_a(PersistCampaign::Config)
    end
  end

  describe '.configure' do
    it 'yields to the config instance' do
      expect { |b| PersistCampaign.configure(&b) }.to yield_with_args(PersistCampaign::Config)
    end
  end
end