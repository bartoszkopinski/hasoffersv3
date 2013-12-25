require 'hasoffersv3/base'
Dir.glob(File.join(File.dirname(__FILE__), './**/*.rb')).each{ |f| require(f) }

module HasOffersV3
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure &block
      block.call configuration
    end
  end
end

if ENV['RAILS_ENV'] == 'test' ||  ENV['RACK_ENV'] == 'test' || ENV['TEST']
  require 'hasoffersv3/testing'
  HasOffersV3::Testing.enable!
end
