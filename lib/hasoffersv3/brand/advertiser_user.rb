module HasOffersV3
  module Brand
    class AdvertiserUser < Base
      class << self
        def find_all(params = {})
          post_request 'findAll', params
        end
      end
    end
  end
end
