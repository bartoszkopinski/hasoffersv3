require 'spec_helper'

describe HasOffersV3::Base do
  describe :requires! do
    it 'raise ArgumentError is parameters are missing' do
      expect { subject.class.requires!({}, [:dummy]) }.to raise_error(ArgumentError)
    end
  end
end
