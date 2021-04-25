# frozen_string_literal: true

require './spec_helper'

RSpec.describe 'synopsis' do
  describe '.synopsis' do
    it 'makes a request' do
      create_vcr_casette('vcr_test', 'http://example.com/')
      VCR.use_cassette('vcr_test') do
        response = Net::HTTP.get_response(URI.parse('http://example.com/'))
        expect(response.body).to match(/This domain is for use in illustrative examples in documents./)
      end
    end
  end
end
