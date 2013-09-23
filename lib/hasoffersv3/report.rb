module HasOffersV3
  class Report < Base
    Target = 'Report'

    class << self
      def getConversions(params = {}, &block)
        # TODO: This *should* be a GET request, however, if we use that here we get: "The requested URL's length exceeds the capacity limit for this server."
        #       because the number of affiliate_ids we pass in is too high.
        post_request(Target, 'getConversions', params, &block)
      end

      def getModSummaryLogs(params = {}, &block)
        get_request(Target, 'getModSummaryLogs', params, &block)
      end
    end
  end
end