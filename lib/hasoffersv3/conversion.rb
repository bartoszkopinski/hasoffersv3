module HasOffersV3
  class Conversion < Base
    class << self
      def findAll(params = {})
        deprecation 'findAll', 'find_all'
        find_all params
      end

      def find_all(params = {})
        get_request 'findAll', params
      end
    end
  end
end
