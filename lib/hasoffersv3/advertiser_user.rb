module HasOffersV3
  class AdvertiserUser < Base
    class << self
      def find_all(params = {})
        post_request 'findAll', params
      end
    end
  end
end
