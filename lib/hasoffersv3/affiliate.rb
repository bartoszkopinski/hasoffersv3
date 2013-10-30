module HasOffersV3
  class Affiliate < Base
    class << self
      def update_payment_method_wire(params = {})
        post_request 'updatePaymentMethodWire', params
      end

      def update_payment_method_paypal(params = {})
        post_request 'updatePaymentMethodPaypal', params
      end
    end
  end
end
