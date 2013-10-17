module HasOffersV3
  class AdvertiserUser < Base
    Target = 'AdvertiserUser'

    class << self
      def find_all(params = {})
        post_request(Target, 'findAll', params)
      end
    end
  end
end
