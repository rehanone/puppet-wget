require 'spec_helper'

describe 'wget::install', :type => :class do
  let :pre_condition do
      'class { "wget": }'
  end

  let(:facts) { {
    :os => { 'name' => 'Ubuntu' }
  } }


  it { is_expected.to contain_package('wget').with({
        'alias' => 'wget',
     })
  }
end
