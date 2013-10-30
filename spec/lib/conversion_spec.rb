require 'spec_helper'

describe HasOffersV3::Conversion do
  subject { HasOffersV3::Conversion }

  let(:url)  { Regexp.new api_url('Conversion') }

  before :each do
    stub_call :get
  end

  describe '.find_all' do
    it 'should make a proper request call' do
      response = subject.find_all
      a_request(:get, url).with(query: hash_including({'Method' => 'findAll'})).should have_been_made
      validate_call response
    end
  end

  describe '.findAll' do
    it 'should make a proper request call' do
      response = subject.findAll
      a_request(:get, url).with(query: hash_including({'Method' => 'findAll'})).should have_been_made
      validate_call response
    end

    it 'should show a deprecation warning' do
      expect(subject).to receive(:deprecation).with('findAll', 'find_all')
      subject.findAll
    end

    it 'should call find_all method' do
      expect(subject).to receive(:find_all).with({test: 1})
      subject.findAll test: 1
    end
  end
end
