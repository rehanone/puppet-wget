require 'spec_helper'
describe 'wget' do

  let(:facts) { {
    :os => { 'name' => 'Ubuntu' }
  } }

  it { should compile }

  context 'with default values for all parameters' do
    it { should contain_class('wget::install') }
    it { should contain_class('wget::config') }
  end

  context 'package_manage => false', :compile do
    let(:params) { {:package_manage => false } }

    it { should_not contain_package('wget').with_ensure('present') }
  end

  context 'package_ensure => present', :compile do
    let(:params) { {:package_ensure => 'present'} }

    it { should contain_package('wget').with_ensure('present') }
  end

  context 'running on FreeBSD', :compile do
    let(:facts) { {
      :operatingsystem => 'FreeBSD',
      :kernel => 'FreeBSD',
      :operatingsystemmajrelease => '10'
    } }

    it { should contain_package('wget') }
  end
end
