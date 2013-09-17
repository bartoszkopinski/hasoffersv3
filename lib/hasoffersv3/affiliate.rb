module HasOffersV3
  class Affiliate < Base
    Target = 'Affiliate'

    class << self
      def update_payment_method_wire(params = {})
        post_request(Target, 'updatePaymentMethodWire', params)
      end

      def update_payment_method_paypal(params = {})
        post_request(Target, 'updatePaymentMethodPaypal', params)
      end
    end
  end
end
