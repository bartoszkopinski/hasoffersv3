%w!base affiliate response conversion report configuration advertiser advertiser_user offer!.each do |file|
  require "hasoffersv3/#{file}"
end

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
