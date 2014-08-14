require 'spec_helper'

describe ExampleController, type: :controller do
  before(:each) do
    PersistCampaign.configure { |c| c.keys = %w{alpha beta} }
  end
  let(:params) { { alpha: '1', beta: '2' } }

  it 'should persist specified params' do
    get 'foo', params
    expect(response).to redirect_to('/example/bar?alpha=1&beta=2')
  end

  it 'does not overwrite existing params' do
    get 'action_with_params', params
    expect(response).to redirect_to('/example/bar?hello=world&alpha=1&beta=2')
  end

  it 'ignores unconfigured params' do
    get 'foo', params.merge(colour: 'red')
    expect(response).to redirect_to('/example/bar?alpha=1&beta=2')
  end

  context 'with no params to persist' do
    it 'redirects normally' do
      get 'foo'
      expect(response).to redirect_to('/example/bar')
    end
  end
end