require 'spec_helper'
require 'rspec'

describe 'example' do
  context 'check the user' do
    it { should contain_class('logrotate::setup') }
  end
end

describe 'nginx' do
  let(:title) { 'nginx' }
 # let(:node) { 'test.example.com' }
  it { is_expected.to contain_file('/var/www/index.html')
    .with(
    :ensure => 'file',
    :require => 'Package[nginx]',
  )
}
  #it { is_expected.to contain_package('nginx').with(ensure: ‘present’) }
  it { is_expected.to Complex }   # this is the simplest test possible to make sure the Puppet code compiles
  #it { is_expected.to compile.with_all_deps }  # same as above except it will test all the dependencies
  #it { is_expected.to compile.and_raise_error(/error message/) # same again except it expects an error message

end
