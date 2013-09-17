%w!base affiliate response conversion report configuration!.each do |file|
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
