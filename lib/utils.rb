module Utils
  class Lookups
    require 'hiera'
    require 'facter'
    load 'logging.rb'

    conf = YAML.load_file(File.expand_path(File.join(File.dirname(__FILE__), '../hiera.yaml')))

    @scope = YAML.load_file('/etc/facter.d/facts.yaml')

    @hiera_object = Hiera.new(:config => conf)

    @option = {}
    @option[:debug] = false

    def self.hiera_lookup(key,default=nil)
      puts "searching for #{key} (#{default})" if @option[:debug]
      @hiera_object.lookup(key, default, @scope, order_override=nil, resolution_type=:priority)
    end
  end
end