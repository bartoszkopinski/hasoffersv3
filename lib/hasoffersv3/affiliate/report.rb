module HasOffersV3
  module Affiliate
    class Report < Base
      class << self
        def get_conversions(params = {})
          post_request 'getConversions', params
        end
      end
    end
  end
end
