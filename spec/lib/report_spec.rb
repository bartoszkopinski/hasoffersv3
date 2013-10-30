require 'spec_helper'

describe HasOffersV3::Report do
  subject { HasOffersV3::Report }
  let(:url)  { api_url 'Report' }

  describe '.get_conversions' do
    before(:each) { stub_call }

    it 'should make a proper request call' do
      response = subject.get_conversions
      a_request(:post, url).with(body: hash_including({'Method' => 'getConversions'})).should have_been_made
      validate_call response
    end
  end

  describe '.getConversions' do
    before(:each) { stub_call }

    it 'should make a proper request call' do
      response = subject.getConversions
      a_request(:post, url).with(body: hash_including({'Method' => 'getConversions'})).should have_been_made
      validate_call response
    end

    it 'should show a deprecation warning' do
      expect(subject).to receive(:deprecation).with('getConversions', 'get_conversions')
      subject.getConversions
    end

    it 'should call find_all method' do
      expect(subject).to receive(:get_conversions).with({test: 1})
      subject.getConversions test: 1
    end
  end

  describe '.get_mod_summary_logs' do
    let(:url)  { Regexp.new api_url('Report') }

    before(:each) { stub_call :get }

    it 'should make a proper request call' do
      response = subject.get_mod_summary_logs
      a_request(:get, url).with(query: hash_including({'Method' => 'getModSummaryLogs'})).should have_been_made
      validate_call response
    end
  end

  describe '.getModSummaryLogs' do
    let(:url)  { Regexp.new api_url('Report') }

    before(:each) { stub_call :get }

    it 'should make a proper request call' do
      response = subject.getModSummaryLogs
      a_request(:get, url).with(query: hash_including({'Method' => 'getModSummaryLogs'})).should have_been_made
      validate_call response
    end

    it 'should show a deprecation warning' do
      expect(subject).to receive(:deprecation).with('getModSummaryLogs', 'get_mod_summary_logs')
      subject.getModSummaryLogs
    end

    it 'should call find_all method' do
      expect(subject).to receive(:get_mod_summary_logs).with({test: 1})
      subject.getModSummaryLogs test: 1
    end

  end
end
