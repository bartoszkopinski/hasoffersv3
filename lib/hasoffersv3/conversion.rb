module HasOffersV3
  class Conversion < Base
    Target = 'Conversion'

    class << self
      def findAll(params = {})
        get_request(Target, 'findAll', params)
      end
    end
  end
end