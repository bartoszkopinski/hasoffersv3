require 'spec_helper'

describe HasOffersV3::AdvertiserUser do
  subject { HasOffersV3::AdvertiserUser }

  let(:url)  { api_url 'AdvertiserUser' }

  describe '.find_all' do
    it 'should make a proper request call' do
      stub_call
      response = subject.find_all
      a_request(:post, url).with(body: hash_including({'Method' => 'findAll'})).should have_been_made
      validate_call response
    end
  end
end
