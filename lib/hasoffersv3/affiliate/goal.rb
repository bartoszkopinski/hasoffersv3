module HasOffersV3
  module Affiliate
    class Goal < Base
      class << self
        def find_all(params = {})
          post_request 'findAll', params
        end
      end
    end
  end
end
