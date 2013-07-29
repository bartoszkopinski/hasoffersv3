module HasOffersV3
  class Report < Base
    Target = 'Report'

    class << self
      def getConversions(params = {})
        get_request(Target, 'getConversions', params)
      end
    end
  end
end