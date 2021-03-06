require 'spec_helper'

describe 'android::platform_tools' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'platform-tools' }

  it do
    should contain_android__definition(title).with(
      :ensure    => 'present',
      :dest_path => 'platform-tools'
    )
  end
end
