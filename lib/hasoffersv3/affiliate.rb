module HasOffersV3
  class Affiliate < Base
    class << self
      def find_all(params = {})
        post_request 'findAll', params
      end

      def find_by_id(params = {})
        requires! params, [:id]
        get_request 'findById', params
      end

      def update_payment_method_wire(params = {})
        post_request 'updatePaymentMethodWire', params
      end

      def update_payment_method_paypal(params = {})
        post_request 'updatePaymentMethodPaypal', params
      end
    end
  end
end
