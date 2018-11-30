RSpec.configure do |config|
  config.mock_with :mocha
end
require 'puppetlabs_spec_helper/puppet_spec_helper'
require 'rubygems'
#RSpec.configure do |c|
  #c.before do
    # avoid "Only root can execute commands as other users"
  #  Puppet.features.stub(:root? => true)
 # end
#end
