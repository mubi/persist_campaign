require 'spec_helper'
require 'generator_spec'
require 'generators/persist_campaign/install_generator'

describe PersistCampaign::Generators::InstallGenerator do
  include GeneratorSpec::TestCase
  destination File.expand_path('../tmp', File.dirname(__FILE__))

  before(:all) do
    prepare_destination
  end

  it 'creates an initializer' do
    run_generator
    assert_file 'config/initializers/persist_campaign.rb'
  end

  context 'when a custom file name is provided as an argument' do
    it 'creates an initializer with the specified file name' do
      run_generator %w(foobar)
      assert_file 'config/initializers/foobar.rb'
    end
  end
end