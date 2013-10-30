module HasOffersV3
  class Advertiser < Base
    class << self
      def find_all_ids
        post_request 'findAllIds', {}
      end

      def find_all(params = {})
        post_request 'findAll', params
      end

      def find_by_id(params = {})
        requires! params, [:id]
        post_request 'findById', params
      end
    end
  end
end
