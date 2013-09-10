module HasOffersV3
  class Configuration
    attr_accessor :network_id, :api_key, :base_uri

    def initialize
      @base_uri = 'http://api.hasoffers.com/v3'
    end
  end
end
