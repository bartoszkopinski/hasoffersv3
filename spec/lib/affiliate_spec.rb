require 'spec_helper'

describe HasOffersV3::Affiliate do
  subject { HasOffersV3::Affiliate }

  let(:url)  { api_url 'Affiliate' }

  before(:each) { stub_call }

  describe '.update_payment_method_wire' do
    it 'should make a proper request call' do
      response = subject.update_payment_method_wire
      a_request(:post, url).with(body: hash_including({'Method' => 'updatePaymentMethodWire'})).should have_been_made
      validate_call response
    end
  end

  describe '.update_payment_method_paypal' do
    it 'should make a proper request call' do
      response = subject.update_payment_method_paypal
      a_request(:post, url).with(body: hash_including({'Method' => 'updatePaymentMethodPaypal'})).should have_been_made
      validate_call response
    end
  end
end
