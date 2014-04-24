require_relative 'spec_helper'

describe "website::default" do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'should install the nginx package' do
    expect(chef_run).to install_package('nginx')
  end

  it 'enables service' do
    expect(chef_run).to enable_service('nginx')
    expect(chef_run).to start_service('nginx')
  end
end
