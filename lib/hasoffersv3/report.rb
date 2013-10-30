module HasOffersV3
  class Report < Base
    Target = 'Report'

    class << self
      def getConversions(params = {}, &block)
        deprecation 'getConversions', 'get_conversions'
        get_conversions params, &block
      end

      def get_conversions(params = {}, &block)
        # TODO: This *should* be a GET request, however, if we use that here we get: "The requested URL's length exceeds the capacity limit for this server."
        #       because the number of affiliate_ids we pass in is too high.
        post_request 'getConversions', params, &block
      end

      def getModSummaryLogs(params = {}, &block)
        deprecation 'getModSummaryLogs', 'get_mod_summary_logs'
        get_mod_summary_logs params, &block
      end

      def get_mod_summary_logs(params = {}, &block)
        get_request 'getModSummaryLogs', params, &block
      end
    end
  end
end
