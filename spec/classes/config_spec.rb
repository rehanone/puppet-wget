require 'spec_helper'

describe 'wget::config', :type => :class do
  let :pre_condition do
      'class { "wget": }'
  end

  let(:facts) { {
    :os => { 'name' => 'Ubuntu' },
    :osfamily => 'Debian',
    :puppetversion => '4.0.0',
    :lsbdistid => 'debian'
  } }


  it { is_expected.to have_resource_count(3) }

  it { is_expected.to have_class_count(4) }

  it { is_expected.to have_wget_retrieve_resource_count(0) }

end
