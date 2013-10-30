require 'spec_helper'

describe HasOffersV3::Offer do
  subject { HasOffersV3::Offer }

  let(:url)  { api_url 'Offer' }

  describe '.find_all' do
    it 'should make a proper request call' do
      stub_call
      response = HasOffersV3::Offer.find_all
      a_request(:post, url).with(body: hash_including({'Method' => 'findAll'})).should have_been_made
      validate_call response
    end
  end

  describe '.find_all_by_ids' do
    it 'should make a proper request call' do
      stub_call
      response = HasOffersV3::Offer.find_all_by_ids ids: [1]
      a_request(:post, url).with(body: hash_including({'Method' => 'findAllByIds'})).should have_been_made
      validate_call response
    end

    context 'when there is no id' do
      it 'should raise exception' do
        expect { HasOffersV3::Offer.find_all_by_ids }.to raise_error ArgumentError
      end
    end
  end

  describe '.find_all_ids_by_advertiser_id' do
    it 'should make a proper request call' do
      stub_call
      response = HasOffersV3::Offer.find_all_ids_by_advertiser_id advertiser_id: 1
      a_request(:post, url).with(body: hash_including({'Method' => 'findAllIdsByAdvertiserId', 'advertiser_id' => '1'})).should have_been_made
      validate_call response
    end

    context 'when there is no id' do
      it 'should raise exception' do
        expect { HasOffersV3::Offer.find_all_ids_by_advertiser_id }.to raise_error ArgumentError
      end
    end
  end

  describe '.find_by_id' do
    it 'should make a proper request call' do
      stub_call
      response = HasOffersV3::Offer.find_by_id id: 1
      a_request(:post, url).with(body: hash_including({'Method' => 'findById', 'id' => '1'})).should have_been_made
      validate_call response
    end

    context 'when there is no id' do
      it 'should raise exception' do
        expect { HasOffersV3::Offer.find_by_id }.to raise_error ArgumentError
      end
    end
  end

  describe '.get_groups' do
    it 'should make a proper request call' do
      stub_call
      response = HasOffersV3::Offer.get_groups id: 1
      a_request(:post, url).with(body: hash_including({'Method' => 'getGroups'})).should have_been_made
      validate_call response
    end

    context 'when there is no id' do
      it 'should raise exception' do
        expect { HasOffersV3::Offer.get_groups }.to raise_error ArgumentError
      end
    end
  end
end
