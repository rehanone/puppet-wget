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
end
